#!/usr/bin/bash

# chemin du fichier "./candide.txt"
fichier="$1"
# le nombre de mots qu'on souhaite afficher, optionnel (par défaut 25)
mots=${2:-25}

# on cherche à vérifier si l'argument est bien un fichier
if [ ! -f "$1" ] 
then 
    echo "Il faut un fichier en argument !
Usage : $0 ./candide.txt [nombre de mots que vous voulez afficher]"
    exit 1
fi

# vérifier les arguments et en mettre un optionnel
if [ "$#" -lt 1 ]
then
    echo "Usage : $0 ./candide.txt [nombre de mots que vous voulez afficher]"
    exit
fi

# un mot par ligne
# -o seulement la partie qui correspond -w uniquement le mot entier qui correspond
# \w word character : lettres, underscore et chiffres
# on nettoie le texte : tr 
# -d '[:punct:]' pour supprimer la ponctuation | on transforme tout en minuscule
resultat=$(grep -o -w '\w*' "$1" | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]')
echo "$resultat"