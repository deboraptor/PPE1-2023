#!/usr/bin/bash

# On crée 4 variables avec =$ avec les emplacements des fichiers et les commandes 
nb_locations_2016=$(cat ./Fichiers/ann/2016/*/* | egrep "Location" | cut -f 3 | wc -l)
nb_locations_2017=$(cat ./Fichiers/ann/2017/*/* | egrep "Location" | cut -f 3 | wc -l)
nb_locations_2018=$(cat ./Fichiers/ann/2018/*/* | egrep "Location" | cut -f 3 | wc -l)
nb_locations_all=$(cat ./Fichiers/ann/*/*/* | egrep "Location" | cut -f 3 | wc -l)

# Avec echo on affiche les résultats
echo "Les locations pour l'année 2016 sont : $nb_locations_2016"
echo "Les locations pour l'année 2017 sont : $nb_locations_2017"
echo "Les locations pour l'année 2018 sont : $nb_locations_2018"
echo "Les locations pour les trois années sont : $nb_locations_all"

