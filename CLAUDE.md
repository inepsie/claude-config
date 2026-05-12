# Préférences utilisateur

## Langue
- Réponds en français par défaut.
- Commentaires de code en français, sauf APIs/identifiants externes en anglais.

## Style de code
- Nommage explicite. kebab-case pour les fichiers, camelCase pour les variables.
- Privilégier la modification d'un fichier existant à la création d'un nouveau.
- Suivre les patterns existants du projet plutôt qu'en introduire de nouveaux.

## Périmètre des changements
- Ne pas ajouter de features, refactors ou "améliorations" non demandés.
- Pas de gestion d'erreur pour des scénarios impossibles. Valider uniquement aux frontières (input utilisateur, APIs externes).
- Pas d'abstraction pour une opération unique. Trois lignes similaires valent mieux qu'une abstraction prématurée.

## Workflow
- Ne pas commit/push automatiquement. Demander avant toute opération git non triviale.

## Outils préférés
- Éditeur : Neovim.
