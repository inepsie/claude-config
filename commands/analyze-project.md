# Analyse Complète de Projet - Commande Automatique

Tu es un assistant expert qui analyse automatiquement et systématiquement le contexte complet d'un projet de développement.

## PROCESSUS AUTOMATIQUE D'ANALYSE

### Phase 1: Reconnaissance Environnementale
Exécute automatiquement ces commandes dans l'ordre :

1. `pwd` - Localisation actuelle
2. `git status` - État du dépôt Git
3. `git log --oneline -10` - Historique récent avec hashes courts
4. `git branch -a` - Toutes les branches (locales et distantes)
5. `ls -la` - Structure du répertoire et fichiers cachés

### Phase 2: Analyse Contextuelle Git Approfondie
Continue avec :

1. `git log --stat -5` - Statistiques des fichiers modifiés récemment
2. `git log --pretty=format:"%h - %an, %ar : %s" -15` - Auteurs et messages détaillés
3. `git shortlog -sn --since="2 months ago"` - Contributeurs actifs récents
4. `git branch -vv` - État des branches avec tracking info
5. `git diff --stat HEAD~5..HEAD` - Aperçu des changements sur les 5 derniers commits

### Phase 3: Découverte de la Documentation
Trouve et lis automatiquement :

1. `find . -maxdepth 3 -name "CLAUDE.md" -o -name "README.md" -o -name "CMakeLists.txt" -o -name "package.json" -o -name "Cargo.toml" | head -10`
2. Lire chaque fichier CLAUDE.md trouvé (hiérarchique : plus profond = plus spécifique)
3. Lire le README.md principal s'il existe
4. Identifier le système de build (CMake, npm, cargo, etc.)

### Phase 4: Analyse Architecturale
Détermine automatiquement :

1. **Type de projet** : Langage principal, frameworks, outils utilisés
2. **Structure** : Organisation des dossiers, patterns utilisés
3. **Dépendances** : Bibliothèques, outils externes, système de build
4. **Conventions** : Style de code, nomenclature, patterns de commits

### Phase 5: Contexte de Développement Actuel
Identifie :

1. **Branche active** et sa signification
2. **Derniers changements** et leur contexte
3. **Travail en cours** : changements non committés, branches feature
4. **Problèmes potentiels** : conflits, branches désynchronisées, fichiers ignorés

## ANALYSE ET SYNTHÈSE

Après avoir collecté toutes ces informations, produit automatiquement :

### Résumé Exécutif
- **Nom du projet** et description courte
- **Technologie principale** (ex: C++/OpenGL, JavaScript/React, Rust/Web, etc.)
- **État actuel** : branche, dernière activité, statut du travail

### Points Clés Identifiés
- **Architecture observée** : patterns, organisation, décisions importantes
- **Historique récent notable** : corrections importantes, nouvelles fonctionnalités, refactorings
- **Conventions détectées** : styles de commit, organisation du code, workflows

### Contexte de Travail Actuel
- **Où nous en sommes** : branche courante, derniers commits, objectifs apparents
- **Prochaines étapes suggérées** : basé sur l'historique et l'état actuel
- **Zones d'attention** : fichiers qui changent souvent, points sensibles

### Recommandations
- **Améliorations** suggérées basées sur l'analyse
- **Documentation** à créer ou mettre à jour
- **Outils** ou pratiques recommandées pour ce projet

## DOCUMENTATION AUTOMATIQUE

Si nécessaire, propose la création ou mise à jour d'un CLAUDE.md pour ce projet incluant :
- Contexte historique important découvert
- Conventions observées
- Décisions architecturales identifiées
- Workflow Git recommandé pour ce projet spécifique

## RÈGLES D'EXÉCUTION

1. **Exécuter TOUTES les commandes** avant de faire l'analyse
2. **Ne pas demander de confirmation** - procéder automatiquement
3. **Analyser TOUS les fichiers CLAUDE.md** trouvés dans l'ordre hiérarchique
4. **Produire une synthèse complète** même si certaines informations manquent
5. **Proposer des actions concrètes** basées sur l'analyse
6. **Être exhaustif** mais **rester concis** dans la présentation

Cette commande est conçue pour donner une compréhension complète et immédiate de n'importe quel projet, de son historique, et de son contexte de développement actuel.