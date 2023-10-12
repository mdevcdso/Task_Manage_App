# Gestion des Tâches - Application iOS 📱

Task_Manage_App est une application iOS développée en Swift avec l'IDE Xcode. Elle a été conçue en suivant l'architecture MVVM (Modèle-Vue-Modèle-Vue). 📝✅

## Caractéristiques principales

- Créez, affichez et gérez vos tâches avec facilité.
- Suivez l'état et la priorité de chaque tâche.
- Visualisez les détails de chaque tâche grâce à la vue en liste ou à la vue détaillée.
- L'architecture MVVM favorise la séparation claire des responsabilités entre les modèles, les vues et les vues-modèles, rendant le code plus maintenable. 🏗️

## Pourquoi utiliser l'architecture MVVM

L'architecture MVVM (Modèle-Vue-Modèle-Vue) est un choix judicieux pour ce projet, car elle présente les avantages suivants :

- **Séparation des Responsabilités :** MVVM sépare clairement la logique métier (modèle), l'interface utilisateur (vue) et la logique de présentation (vue-modèle), facilitant ainsi la maintenance et les tests.

- **Réutilisation de la Logique de Présentation :** La vue-modèle peut être réutilisée pour différents types de vues, ce qui permet de maintenir une logique de présentation cohérente.

- **Testabilité :** En isolant la logique de présentation dans la vue-modèle, il est plus facile de tester l'application.

## Statut du Projet

Le projet est en cours de développement. 🚧

## Structure du Projet

L'application est composée des fichiers suivants :
- `Tasks.swift` : Définit la structure de données pour les tâches.
- `ContentView.swift` : Affiche la liste des tâches et permet leur gestion.
- `TaskDetailView.swift` : Affiche en détail les informations d'une tâche.
- `TaskViewModel.swift` : Contient la logique de gestion des données et de l'interface utilisateur.
- `Gestion_TaskApp.swift` : Le point d'entrée de l'application.

## Comment Commencer

1. Clonez le dépôt

2. Ouvrez le projet dans Xcode.

3. Compilez et exécutez l'application sur votre appareil iOS ou dans le simulateur.

## Contribuer

Si vous souhaitez contribuer à l'amélioration de l'application, nous sommes ouverts aux pull requests. N'hésitez pas à signaler des problèmes ou à proposer des améliorations dans la section des issues.

---

Bonne utilisation !
