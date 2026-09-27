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
- Dès qu'un problème est repéré (bug, incident, fragilité), viser une correction PÉRENNE qui traite la cause racine, pas une rustine à répéter. Le réparer tout de suite si c'est dans le périmètre courant ; sinon le consigner clairement (mémoire/issue) avec la cause et le fix de fond proposé, et le porter en haut de la pile. Ne pas se contenter d'un palliatif sans nommer la cause racine.

## Contenu destiné au copier-coller
- Quand une sortie est destinée à être copiée-collée ailleurs (prompt pour un autre LLM, message, snippet, requête, etc.), la livrer dans un bloc de code `text` (ou le langage adéquat) pour qu'elle se sélectionne d'un bloc et se colle proprement.
- Pas de markdown de présentation à l'intérieur (pas de `>` blockquote, pas de puces décoratives ni de gras) qui salirait le collage. Garder le contenu brut, prêt à l'emploi.
- Les commentaires, ajustements et questions vont en dehors du bloc, pas dedans.

## Outils préférés
- Éditeur : Neovim.

## Git push depuis la sandbox Claude Code

Contexte : `~/.gitconfig` global contient `credential.helper = store` + `credential.username = inepsie`. Dans la sandbox Claude Code, `ssh` est bloqué et le credential store demande un password interactif inaccessible → tout `git push` standard échoue.

Technique qui marche, sans modifier la config globale :

```bash
TOKEN=$(gh auth token) && \
git -c credential.helper= \
    -c "credential.helper=!f() { echo username=x-access-token; echo password=$TOKEN; }; f" \
    -c credential.username= \
    push -u origin main
```

Pourquoi ça marche :
- `credential.helper=` (vide) réinitialise la liste des helpers, neutralise le `store` global.
- Le helper inline réinjecté fournit un username factice + le token gh comme password.
- `credential.username=` (vide) annule le forçage `inepsie@` qui faisait planter avant même la lecture des credentials.
- Tout est en `-c` local au commit/push : `~/.gitconfig` reste intact.

Prérequis : `gh auth status` doit montrer un token valide avec scope `repo`.

Pour les opérations non-push qui plantent aussi à cause du SSH : passer le remote en HTTPS avec `git remote set-url origin https://github.com/<owner>/<repo>.git` (le user peut repasser en SSH ensuite depuis son terminal normal).
