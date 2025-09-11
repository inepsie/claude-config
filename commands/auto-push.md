# Commande /auto-push

## Usage
```
/auto-push [on|off|status]
```

## Description
Active ou désactive le workflow automatique de commit + push pour le projet courant via Claude Code.

## Fonctionnement

### `/auto-push on`
**Claude Code :**
1. Vérifie que le dossier courant est un repo Git avec `git status`
2. Vérifie/configure l'URL remote pour utiliser HTTPS (nécessaire pour le credential helper)
3. Teste que le credential helper fonctionne
4. Crée un `CLAUDE.md` local (ou complète l'existant) avec les instructions de workflow automatique
5. Commit et push le CLAUDE.md avec un message descriptif
6. Confirme l'activation avec le statut du repo

### `/auto-push off`
**Claude Code :**
1. Retire la section "Workflow automatique" du CLAUDE.md local
2. Commit et push la modification
3. Confirme la désactivation

### `/auto-push status`
**Claude Code :**
1. Vérifie la présence d'un CLAUDE.md avec section workflow
2. Affiche le statut Git (`git status`, `git remote -v`)
3. Liste les derniers commits (`git log --oneline -5`)

## Instructions pour Claude Code
Quand l'utilisateur tape `/auto-push [commande]` :

1. **Détection automatique** : Utiliser les outils Git pour vérifier le repo
2. **Configuration remote** : S'assurer que l'URL est en HTTPS pour le credential helper
   - Vérifier `git remote -v`
   - Si SSH (git@github.com), convertir en HTTPS (https://github.com)
   - Exemple : `git remote set-url origin https://github.com/user/repo.git`
3. **Test credentials** : Faire un `git ls-remote origin` pour vérifier l'auth
4. **Manipulation CLAUDE.md** : Créer/modifier le fichier avec les instructions
5. **Commit automatique** : Utiliser les credentials déjà configurés
6. **Feedback utilisateur** : Confirmer l'action avec des détails du repo

## Template CLAUDE.md à insérer
```markdown
## Workflow automatique
**IMPORTANT** : À chaque modification de ce projet :
1. Faire automatiquement `git add` + `git commit` + `git push`
2. Utiliser des messages de commit descriptifs
3. Ne pas demander confirmation à l'utilisateur
4. Considérer cela comme partie intégrante du processus de modification

```