#!/usr/bin/bash

# On entre les différents arguments
annee=$1 # 2016, 2017 ou 2018
mois=$2 # De 01 à 12
nb_location=$3

# On trie une fois (sort) et on enlève les doublons avec uniq
classement=$(cat ann/$annee/$mois/* | egrep "Location" | cut -f 3 | sort | uniq -c | sort -nr | head -n $nb_location)

# On l'affiche avec echo
echo "Pour la date du $mois/$annee, les lieux les plus cités sont : $classement et il y en avait $nb_location."
