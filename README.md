# ~/.claude — Configuration utilisateur Claude Code

Configuration globale (scope **user**). Surchargée par les configs projet
(`<repo>/.claude/`) et par les flags CLI au lancement de `claude`.

## Hiérarchie de précédence (haut = écrase bas)

```
managed (entreprise/MDM)        # non utilisé ici
CLI flags                       # --model, --permission-mode, ...
<repo>/.claude/settings.local.json   # perso projet (gitignored)
<repo>/.claude/settings.json         # partagé équipe (commité)
~/.claude/settings.local.json        # perso global  ← ici
~/.claude/settings.json              # global        ← ici
```

Les arrays `permissions.allow` se concatènent et se dédupliquent entre
niveaux (ils ne se remplacent pas).

## Fichiers présents

| Fichier / dossier | Rôle |
|---|---|
| `CLAUDE.md` | Instructions utilisateur globales (chargées à chaque session) |
| `settings.json` | Réglages globaux (model, statusLine, vim, effort) |
| `settings.local.json` | Permissions globales (gitignored) |
| `skills/` | Skills perso transversaux ; les skills de niche vivent dans leur projet (`<repo>/.claude/skills`) ou portent un `paths:` (`proc-env-*`) |
| `agents/` | Sous-agents perso (vide actuellement — overrides éventuels) |
| `hooks/` | Hooks PreToolUse (`protect-secrets.sh`) |
| `plugins/` | Marketplaces et plugins (géré par Claude Code) |
| `projects/` | Index de sessions par projet (système) |
| `sessions/`, `todos/`, `shell-snapshots/`, `cache/`, `file-history/`, `statsig/`, `telemetry/`, `paste-cache/`, `session-env/`, `tasks/`, `debug/`, `downloads/`, `backups/` | Données runtime (système) |
| `.credentials.json` | Tokens (géré par Claude Code, ne pas éditer) |

`~/.claude.json` (à la racine du home) est l'index d'état du CLI : ne pas
éditer à la main.

## Plugins et contexte par projet

Les marketplaces locales (meta-builder, bevy-builder, gamedev-harness) sont déclarées
ici, mais seul `meta-builder` est activé pour tout le compte. Les plugins Bevy
s'activent dans le `.claude/settings.json` de chaque projet Bevy (modèle :
`~/code/eclat/.claude/settings.json`). Lancer `claude` depuis le dossier du projet.

## MCP servers

Configurés via `claude mcp add ...`. La déclaration finale (commande,
env vars, tokens) est stockée dans `~/.claude.json` (géré par Claude Code,
hors git). L'ancien `config.json` au format non reconnu a été supprimé.

Serveurs actuellement actifs (scope user) :

| Nom | Rôle | Données |
|---|---|---|
| `github` | API GitHub (issues, PR, repos) | token via `gh auth token` |

Lister : `claude mcp list`. Retirer : `claude mcp remove <name>`.
