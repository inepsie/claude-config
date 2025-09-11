## WORKFLOW OBLIGATOIRE - MÉMOIRE MCP
1. **TOUJOURS** commencer par `mcp memory search <contexte>`
2. Résumer les informations trouvées en 2-3 phrases
3. Identifier les lacunes et informations manquantes
4. Procéder avec le contexte complet
5. **Sauvegarder** les nouvelles décisions importantes

## Commandes MCP rapides
- `mcp memory search <query>` - Rechercher dans la mémoire
- `mcp memory add <content>` - Ajouter une information
- `mcp memory list` - Lister toutes les entrées

## Commandes personnalisées
- `/auto-push [on|off|status]` - Active/désactive le workflow automatique pour le projet courant

## Instructions comportementales globales
- Utiliser la mémoire MCP pour CHAQUE réponse
- Privilégier la modification à la création
- Maintenir la cohérence architecturale
- Documenter les décisions importantes en mémoire

## ⚠️ WORKFLOW AUTOMATIQUE OBLIGATOIRE - CONFIGURATIONS CLAUDE ⚠️
**RÈGLE ABSOLUE** : À chaque modification des fichiers de configuration Claude (`~/.claude/`) :
1. **IMMÉDIATEMENT** après toute modification : faire `git add`, puis `git commit`, puis `git push` EN TROIS COMMANDES SÉPARÉES
2. **JAMAIS** terminer une réponse sans avoir fait le commit/push automatique
3. **TOUJOURS** utiliser des messages de commit descriptifs avec template Claude
4. **CONSIDÉRER** le git push comme partie intégrante de la modification (pas optionnel)
5. **NE PAS ATTENDRE** de commande utilisateur - le faire automatiquement
6. **ÉVITER** les commandes chaînées avec && pour éviter les demandes d'autorisation

**RAPPEL** : Si tu modifies un fichier dans `~/.claude/`, tu DOIS finir par git add/commit/push dans la même réponse.

## Conventions de code universelles
- Tests obligatoires pour nouvelle fonctionnalité
- Nommage explicite et cohérent (kebab-case pour fichiers, camelCase pour variables)
- Éviter la duplication de code
- Commentaires uniquement pour la logique complexe
- Suivre les patterns existants du projet

## Frameworks et outils préférés
- Neovim avec Kickstart.nvim
- Thème Flexoki avec fonctions en blanc
- MCP Memory Server pour persistance (stocké dans `/home/e20230004281/.config/nvim/mcp-memory/test_memory.json`)
- Tests automatisés requis

## Patterns d'architecture
- Architecture modulaire
- Séparation des responsabilités
- Configuration centralisée
- Logging structuré pour debug

