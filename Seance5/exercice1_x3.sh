#!/usr/bin/bash
# Ce script permet d'afficher les locations pour les années 2016, 2017 et 2018. Il faut entrer le type de donnée.

# On répète 3 fois pour chaque année le script exercice1.sh en prenant le $type en compte
type=$1

if [ $# -ne 1 ] # L'utilisateur doit entrer 1 argument
then
    echo "Vous devez entrer 1 seul argument."
    exit
fi

bash exercice1.sh 2016 $type
bash exercice1.sh 2017 $type
bash exercice1.sh 2018 $type
