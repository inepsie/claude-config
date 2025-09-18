## WORKFLOW OBLIGATOIRE - ANALYSE AUTOMATIQUE

### 1. MÉMOIRE MCP (Priorité 1)
1. **TOUJOURS** commencer par `mcp memory search <contexte>`
2. Résumer les informations trouvées en 2-3 phrases
3. Identifier les lacunes et informations manquantes
4. Procéder avec le contexte complet
5. **Sauvegarder** les nouvelles décisions importantes

### 2. ANALYSE GIT AUTOMATIQUE (Priorité 2)
Quand on me demande d'analyser un projet, de commencer à travailler dessus, ou quand j'arrive dans un nouveau répertoire :

**ÉTAPE 1 : Reconnaissance Git Automatique**
1. `pwd` - Confirmer le répertoire de travail
2. `git status` - État actuel du dépôt
3. `git log --oneline -10` - Historique récent pour comprendre le contexte
4. `git branch -a` - Branches disponibles et active
5. `ls -la` pour voir la structure et les fichiers importants

**ÉTAPE 2 : Analyse Contextuelle Approfondie** (si projet complexe)
1. `git log --stat -5` - Voir quels fichiers changent fréquemment
2. `git shortlog -sn --since="2 months ago"` - Collaborateurs actifs récents
3. `git log --pretty=format:"%h - %an, %ar : %s" -15` - Qui a fait quoi et quand
4. `find . -name "CLAUDE.md" -o -name "README.md" -o -name "CMakeLists.txt" | head -10` - Fichiers de configuration
5. Lire automatiquement tous les fichiers CLAUDE.md trouvés

**ÉTAPE 3 : Synthèse et Documentation**
- Analyser les patterns de développement observés
- Identifier le contexte de travail actuel (branche, derniers commits)
- Mettre à jour CLAUDE.md du projet si nécessaire avec découvertes importantes

## Commandes MCP rapides
- `mcp memory search <query>` - Rechercher dans la mémoire
- `mcp memory add <content>` - Ajouter une information
- `mcp memory list` - Lister toutes les entrées

## Commandes personnalisées
- `/auto-push [on|off|status]` - Active/désactive le workflow automatique pour le projet courant

## Instructions comportementales globales
- Utiliser la mémoire MCP pour CHAQUE réponse
- **Analyse Git automatique** pour tout nouveau projet ou répertoire
- Privilégier la modification à la création
- Maintenir la cohérence architecturale
- Documenter les décisions importantes en mémoire
- **Toujours analyser l'historique avant modifier du code existant**

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
- **COMMENTAIRES TOUJOURS EN FRANÇAIS** - jamais en anglais sauf APIs externes
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


