#!/usr/bin/bash

if [ ! -f "$1"]
then 
    echo "Pas de fichier donné en argument."
    exit 1
fi

# chemin du fichier "./candide.txt"
fichier="$1"

# vérifier si le nombre d'arguments est correct (un seul)
if [ "$#" -eq 1 ]
then
    # un mot par ligne
    # -o seulement la partie qui correspond -w uniquement le mot entier qui correspond
    # \w word character : lettres, underscore et chiffres
    # on nettoie le texte : tr 
    # -d '[:punct:]' pour supprimer la ponctuation | on transforme tout en minuscule
    resultat=$(grep -o -w '\w*' "$fichier" | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]')
    echo "$resultat"

else 
    echo "Il faut un argument (le nom du fichier)"
    exit
fi