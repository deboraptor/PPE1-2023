#!/usr/bin/bash

# On transforme "../urls/fr.txt" en paramètre du script
urls=$1

# Variable pour que le numéro de ligne s'affiche
N=0

# On donne bien un argument au script, sinon on s'arrête
if [ $# -eq 1 ]
then
	while read -r line;
	do
		N=$(expr $N + 1) # On affiche le numéro de ligne avant chaque URL
		# On veut afficher le code HTTP de réponse à la requête (c'est la première ligne)
		# -s = silent, permet de passer en mode silencieux le chargement de l'URL
		# -I = permet d'afficher le head sans passer par -n HEAD
		code=$(curl -I -s $line | grep "^HTTP/" | cut -d " " -f 2) 
		encodage=$(curl -I -s $line | grep "\bcharset=" | cut -d "=" -f 2)
		echo -e "${N}\t${line}\t${code}\t${encodage}"; # -e permet de bien echo les caractères spéciaux (les tabulations \t)
	done < $urls; 
else
	echo "Vous devez entrer un argument."
	exit
fi