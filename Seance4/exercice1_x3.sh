#!/usr/bin/bash

# On répète 3 fois pour chaque année le script exercice1.sh en prenant le $type en compte
type=$1
bash exercice1.sh 2016 $type
bash exercice1.sh 2017 $type
bash exercice1.sh 2018 $type
