#!/usr/bin/bash

# On défini les arguments 1 et 2 et la variable nb_entite
annee=$1 # On doit entrer l'année en premier argument
type=$2 # Et ici on entre .ann ou .txt 
nb_entite=$(cat ./Fichiers/*/$annee/*/* | egrep $type | wc -l)

if [ $# -ne 2 ] # $# correspond au nombre d'arguments qu'il faut dans la commande, ici c'est 2
then 
    echo "Ce programme demande 2 arguments."
    exit
fi
if [[ $1 =~ 201[678] ]] && [[ $2 =~ .(ann|txt) ]]
then
    echo "Les locations pour l'année $annee sont de : $nb_entite et ce sont des données en $type."
else
    echo "Vous devez donner une année entre 2016 et 2018 uniquement et un type entre .ann et .txt."
    exit
fi

#