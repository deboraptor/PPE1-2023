# Journal de bord du projet encadré
## 20/09 -  Cours 1
Création du compte GitHub. 
Premières manipulations sur le terminal. 

## 27/09 - Cours 2
A quoi sert la commande tree ? 
git commit ne fonctionne pas, il me demande de dire qui je suis. Même en faisant git config --global user.name "Débora" il me redemande à chaque fois. J'ai essayé avec le mail ça fonctionne.
Comment on retourne en arrière sur l'arborescence ? Parfois j'y arrive avec cd ../nomdudossier mais des fois ça marche pas :( Update : faut juste mettre cd ../ haha

- découverte de ls -a
- les commandes avec git ne fonctionnent pas : fatal: not a git repository (or any of the parent directories): .git -> j'essaie de comprendre pourquoi.
Update : il faut être dans le dossier sinon ça marche pas.
- test de clone de mon GitHub sur ma machine et test de git add / git commit.
Update : concluant !
- Création du tag, je fais nano Journal et j'édite depuis mon terminal.

## 04/10 - Cours 3
- Voici ce que j’avais écrit sur mon fichier “oups.md”
"blablabla je suis erreur
et moi aussi blablabla"

## 11/10 - Cours 4
J'ai eu beaucoup de mal pendant le cours à comprendre les commandes et les flux d'entrées-sorties. 
- je découvre ls -l et ls -lh pour bien copmrendre la commande chmod +x.
- je comprends un peu mieux les scripts sur bash, notamment les variables, les arguments et la syntaxe générale.

## 18/10 - Cours 5
J'ai voulu pull mais je n'ai pas pu parce que j'avais supprimé des fichiers directement dans dolphin et mon git n'était plus à jour.
Et à ce moment-là j'ai essayé de faire les commandes que mon terminal me conseillait (git restore, rm, add) sauf que ça ne fonctionnait toujours pas. J'ai fais git status pour comprendre mieux, et là j'ai fais une terrible erreur : j'ai utilisé config pull.rebase false comme m'a conseillé git status. Sauf que je ne pouvais plus faire de git pull !! J'ai donc essayé config pull.rebase true sans savoir si ça existait. J'ai ensuite cherché sur git help (-replace-all, pull.rebase), puis sur internet (rebase --abort --skip) sans succès. J'ai essayé git fetch... et git reset --hard qui a fonctionné ! Cependant, le terminal n'agissait pas comme d'habitude donc j'ai un peu d'apprehénsion pour la prochaine fois. 
