#!/usr/bin/bash
# Ce script permet d'afficher un classement des lieux les plus cités par mois/année et de dire le nombre de lignes affichées

# On entre les différents arguments
annee=$1 # 2016, 2017 ou 2018
mois=$2 # De 01 à 12
nb_ligne=$3 # Pour savoir combien de lignes on affiche dans le classement

# On trie une fois (sort) et on enlève les doublons avec uniq
classement=$(cat Fichiers/ann/$annee/$mois/* | egrep "Location" | cut -f 3 | sort | uniq -c | sort -nr | head -n $nb_ligne)

if [ $# -ne 3 ] # Correspond au nombre d'arguments qu'il faut (ici 3)
then 
    echo "Il faut 3 arguments : l'année (XXXX), le mois (XX) et le nombre de lignes à afficher dans le classement."
    exit
else
    echo "Pour la date du $mois/$annee, les lieux les plus cités sont : 
$classement 
Il y avait $nb_ligne lignes affichées."
fi