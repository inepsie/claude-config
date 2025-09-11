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
**IMPORTANT** : Remplacer `${PWD}` par le chemin absolu du répertoire courant lors de l'insertion.

```markdown
## ⚠️ WORKFLOW AUTOMATIQUE OBLIGATOIRE - CONFIGURATIONS CLAUDE ⚠️
**RÈGLE ABSOLUE** : À chaque modification des fichiers de ce projet (`${PWD}`) :
1. **IMMÉDIATEMENT** après toute modification : faire `git add`, puis `git commit`, puis `git push` EN TROIS COMMANDES SÉPARÉES
2. **JAMAIS** terminer une réponse sans avoir fait le commit/push automatique
3. **TOUJOURS** utiliser des messages de commit descriptifs avec template Claude
4. **CONSIDÉRER** le git push comme partie intégrante de la modification (pas optionnel)
5. **NE PAS ATTENDRE** de commande utilisateur - le faire automatiquement
6. **ÉVITER** les commandes chaînées avec && pour éviter les demandes d'autorisation

**RAPPEL** : Si tu modifies un fichier dans `${PWD}`, tu DOIS finir par git add/commit/push dans la même réponse.

```
