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

## Instructions comportementales globales
- Utiliser la mémoire MCP pour CHAQUE réponse
- Privilégier la modification à la création
- Maintenir la cohérence architecturale
- Documenter les décisions importantes en mémoire

## Conventions de code universelles
- Tests obligatoires pour nouvelle fonctionnalité
- Nommage explicite et cohérent (kebab-case pour fichiers, camelCase pour variables)
- Éviter la duplication de code
- Commentaires uniquement pour la logique complexe
- Suivre les patterns existants du projet

## Frameworks et outils préférés
- Neovim avec Kickstart.nvim
- Thème Flexoki
- MCP Memory Server pour persistance
- Tests automatisés requis

## Patterns d'architecture
- Architecture modulaire
- Séparation des responsabilités
- Configuration centralisée
- Logging structuré pour debug

@include agents/memory-expert.md
@include commands/memory-check.md