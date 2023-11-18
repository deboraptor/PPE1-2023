# Ici j'écrirai toutes mes progressions pour les exercices !
## 20/09 -  Cours 1
Chez moi :
- essai des commandes vues en cours, mais j'ai oublié de faire l'exercice...

## 27/09 - Cours 2
A faire :
- m'entraîner sur les chemins relatifs et absolus
- faire l'exercice de la semaine dernière
- relire les diapos pour bien comprendre le commit et tout

Chez moi :
- relecture des diapos
- j'essaie de refaire ce qu'on a vu en cours et je me rends compte que j'ai pas
sauvegardé ma clé dans mon ./ssh (et que je l'avais mise dans un dossier sur mon
bureau) donc je supprime mes clé et je recommence

Chez moi :
## 04/10 - Cours 3
Je refais l'exercice de la séance 3 parce que je n'y avais pas réussi en cours.

Chez moi :
- j'ai refait l'exercice 1 de la séance 3 et je ne suis pas sûre de comprendre
la consigne. J'ai bien créé deux commits, un qui s'appelle "I AM ERROR" et un
qui s'appelle "Séance 3" et j'ai essayé de supprimé "I AM ERROR" tout en gardant
le commit intitulé "Séance 3" mais à chaque fois, même quand je met le numéro
SHA qui correspond à "I AM ERROR", c'est uniquement le dernier commit, soit
"Séance 3" qui se supprime tout en gardant le commit "I AM ERROR". J'ai
décidé de continuer les exercices après avoir discuté avec d'autres camarades
qui me disaient que c'était bien ça qu'il fallait faire.
- j’essaie de faire l’exercice 2 : j’ai bien créé le fichier oups.md et j’ai
fait un commit, cependant en faisant mon deuxième commit j’ai eu un message
d'erreur qui m'indiquait de faire un push avant de faire un autre commit.
J’ai donc push avant de vouloir faire à nouveau un commit mais ça me disait
la même chose : faire un push. Peut-être que je n’aurais pas dû faire nano
et éditer mon fichier pour le deuxième commit ? Il me semble pourtant que c’est
une étape indispensable pour faire un commit. En tout cas, je me suis retrouvée
bloquée avec un message d’erreur, et en refaisant push ça a fonctionné à ce
moment-là. Donc malgré le message d’erreur mes log étaient bonnes et en vérifiant
avec cat mes deux fichiers étaient à la bonne version aussi. Ensuite, j’ai voulu
créer un tag mais la console m’indique que je ne suis pas dans la même branche
donc j’essaie de tout régler.
- le problème c’est qu'avec mon problème pour l’exercice 1 mon commit a toujours
pour nom “I AM ERROR”.

## 11/10 - Cours 4
A faire :
- les exercices et créer un tag qu'on va déposer sur e-campus.

Incompréhension de l'énoncé de la question : Écrire un script qui compte les 
entités pour une année un type d’entité donnés en argument du programme.
Qu'est-ce qu'une entité ? Update : je crois avoir compris.

J'ai aussi eu du mal avec la syntaxe, une fois je n'avais pas mis d'espace après echo.
Pour l'exercice 2 je n'ai pas réussi ce que je voulais faire.

## 25/10 - Cours 5
Lire et expliquer ce code : 
Ce code permet de savoir si une chaîne de caractères correspond à un lien ou non.
La condition if vérifie si l’utilisateur entre 1 argument ou pas, (nombre 
d'argument(s) entré(s) → not equal à 1). S’il n’y a pas un argument, on envoie 
“ce programme demande un argument” à l’utilisateur et on quitte le programme.
Ensuite on crée l’argument FICHIER_URL et on  met à valeur 0 OK(pour okay) et NOK
(pour not okay). La boucle while lit la ligne grâce à read -r LINE et affiche la 
ligne avec echo “la ligne: $LINE” et vérifie grâce à l’expression régulière 
[[ $LINE =∼ ^ https ?:// ]] si ça ressemble à une URL. Si la ligne correspond à 
l’expression régulière, on affiche “ressemble à une URL valide” et on ajoute 1 
à la valeur de OK, sinon on affiche “ne ressemble pas à un URL valide” et on 
ajoute 1 à NOK.


Avec le dernier echo on affiche le nombre de lignes qui sont okay avec OK et 
celles qui ne correspondent pas à une URL avec NOK. 

## 08/11 - Cours 6
### Miniprojet
Exercice 1 :
- comment faire une tabulation ? J'ai trouvé \t mais ça l'affiche sur le terminal sans 
faire de tabulation.
Update : il fallait faire en sorte que le / passe en caractère spécial
avec un -e.

Exercice 2 :
- On peut faire en sorte que le script reconnaisse une url valide en réutilisant le
script du cours 5, mais on va devoir le modifier car dans la liste du document 
fr.txt il y a une url qui commence par fr.wikipedia.org. Mon idée est donc de faire
une expression régulière avec les extensions, il va donc falloir que je cherche une
liste sur internet de toutes les extensions possible pour faire un RegEx avec.
Dans l'immédiat je me dis que je peux le faire uniquement pour les fichier de
fr.txt et le faire pour la prochaine fois.
- cut --help
- afficher le code et l'encodage = boucle ? comment faire une boucle dans une variable ?

Bloquée pour afficher l'encodage et le code HTTP...
Update : je ne voyais pas les messages d'erreurs sur vscode !! 

## 15/11 - Cours 7
### Miniprojet v2
J'ai eu du mal avec les sorties pour la question 4 de l'exercice 1. 
- comment faire un argument optionnel ? J'ai eu l'idée de faire [ "$#" -lt 1 ] pour "plus
petit que". Update : ça marche !! 
- j'ai découvert $0 ! Je l'utilise alors pour echo une phrase qui indique comment utiliser
le script.
- j'utilise shellcheck et c'est très partique !
- paste sert à combiner chaque ligne de mots avec la ligne suivante

Update : en fait j'avais loupé un truc dans la consigne, et maintenant mon script ne 
fonctionne plus comme avant, il va falloir que je corrige ça.

## 22/11 - Cours 8 
### html
J'ai rattrapé l'exercice d'html que j'avais oublié de faire et je me lance dans la
réalisation de mon site github.
