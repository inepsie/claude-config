# Claude Code Configuration

Configuration personnelle pour Claude Code incluant workflows, préférences et mémoire MCP.

## Structure

```
.claude/
├── claude.md              # Configuration principale et workflows
├── config.json            # Configuration MCP servers
├── plugins/               # Système de plugins
│   └── config.json
└── README.md              # Ce fichier
```

## Installation

1. Cloner ce dépôt dans votre home :
```bash
git clone https://github.com/VOTRE_USERNAME/claude-config.git ~/.claude-backup
cp -r ~/.claude-backup/* ~/.claude/
```

2. Vérifier la configuration MCP Memory :
```bash
cat ~/.claude/config.json
```

## Configuration MCP Memory Server

Le serveur MCP Memory est configuré pour utiliser :
- **Répertoire de données** : `~/.config/nvim/mcp-memory`
- **Format** : JSON avec tags et contexte
- **Commandes** : Via `npx @modelcontextprotocol/server-memory`

## Workflow intégré

Voir `claude.md` pour le workflow complet incluant :
- Consultation automatique de la mémoire MCP
- Conventions de code standardisées  
- Frameworks et outils préférés
- Patterns d'architecture

## Personnalisation

Modifier `claude.md` pour ajuster :
- Instructions comportementales
- Conventions de nommage
- Outils préférés
- Patterns d'architecture

## Sauvegarde

Les fichiers sensibles (`.credentials.json`) et temporaires (sessions, todos) sont exclus du versioning via `.gitignore`.

---
*Configuration générée pour Claude Code - Assistant IA d'Anthropic*