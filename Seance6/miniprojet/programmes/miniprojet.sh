#!/usr/bin/env bash

if [ $# -eq 1 ]
then
	echo "Vous devez entrer un argument."
	exit
else
	if [ -f $1 ]
	then
		echo ""
	else
		echo "On attend un fichier qui existe."
		exit
	fi
fi

# Argument qui collecte les urls
urls=$1

# Variable pour que le numéro de ligne s'affiche
N=0

# -e permet de bien echo les caractères spéciaux
while read -r line;
do
	N=$(expr $N + 1)
	echo -e "$N\t$line";
done < $urls;


# On veut afficher le code HTTP de réponse à la requête (c'est la première ligne)
# -s = silent, permet de passer en mode silencieux le chargement de l'URL
# -I = permet d'afficher le head sans passer par -n HEAD
reponse=$(curl -I -s $urls | egrep "HTTP" | wc -l) 
echo $reponse