# remove_suffix_overwrite.sh

## Description

Ce script Bash a pour but de supprimer le suffixe `.1/` des noms de dossiers situés dans un répertoire cible. Il renomme les dossiers en écrasant les éventuels dossiers existants portant le même nom (grâce à l'option `-f` 
de la commande `mv`).

## Fonctionnement

Le script effectue les actions suivantes :
1. Parcourt tous les sous-dossiers du répertoire cible (`/volume2/downloadstation/incoming/medias`).
2. Vérifie si le nom du dossier se termine par `.1/`.
3. Si c'est le cas, il renomme le dossier en supprimant ce suffixe.
4. Affiche un message indiquant si l'opération a réussi ou échoué.

## Prérequis

- Un environnement Linux ou un NAS Synology avec un shell compatible Bash.
- Des permissions suffisantes pour renommer des dossiers dans le répertoire cible.

## Installation

1. Copier le script dans un fichier nommé `remove_suffix_overwrite.sh`.
2. Rendre le script exécutable avec la commande :
   ```bash
   chmod +x remove_suffix_overwrite.sh
   ```

## Utilisation

Exécuter le script avec la commande suivante :
```bash
./remove_suffix_overwrite.sh
```

## Remarque

- Le script écrase automatiquement les dossiers existants portant le même nom sans demander confirmation.
- Pour éviter toute perte de données accidentelle, il est recommandé de tester le script sur un répertoire de test avant de l'exécuter sur des données importantes.


