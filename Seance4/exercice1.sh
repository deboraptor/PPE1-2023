#!/usr/bin/bash

# On défini les arguments 1 et 2 et la variable nb_entite
annee=$1 # On doit entrer l'année en premier argument
type=$2 # Et ici on entre .ann ou .txt ou autre
nb_entite=$(cat ./Fichiers/ann/$annee/*/* | egrep $type | wc -l)

# On affiche les résultats avec echo
echo "Les locations pour l'année $annee sont de : $nb_entite et ce sont des données en $type."
