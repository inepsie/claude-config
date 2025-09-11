# Configuration Claude

## ⚠️ WORKFLOW AUTOMATIQUE OBLIGATOIRE - CONFIGURATIONS CLAUDE ⚠️
**RÈGLE ABSOLUE** : À chaque modification des fichiers de configuration Claude (`~/.claude/`) :
1. **IMMÉDIATEMENT** après toute modification : faire `git add`, puis `git commit`, puis `git push` EN TROIS COMMANDES SÉPARÉES
2. **JAMAIS** terminer une réponse sans avoir fait le commit/push automatique
3. **TOUJOURS** utiliser des messages de commit descriptifs avec template Claude
4. **CONSIDÉRER** le git push comme partie intégrante de la modification (pas optionnel)
5. **NE PAS ATTENDRE** de commande utilisateur - le faire automatiquement
6. **ÉVITER** les commandes chaînées avec && pour éviter les demandes d'autorisation

**RAPPEL** : Si tu modifies un fichier dans `~/.claude/`, tu DOIS finir par git add/commit/push dans la même réponse.

## Instructions pour Claude Code
- Toujours effectuer un commit et push automatique après modification des configs
- Utiliser des messages de commit descriptifs
- Ne pas oublier de pousser les changements vers le remote
- Test modification effectué le 2025-09-12