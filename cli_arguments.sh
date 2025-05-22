#!/bin/bash

#initialiser le compteur a 1
compt=1
# Afficher chaque argument ligne par ligne
while [ $# -gt 0 ]; do
    echo "Argument $compt: $1"
    #shift donne a $(n) la valeure de $(n+1) vers la gauche
    shift
    # copmt = copmt +1
    ((compt++))
done
# n est un chiffre
#mettre fin au script
exit 0

#!/bin/bash
read -p "Entrée votre chaine de caractère : " Chaine
set $Chaine
taille=$#
arg=1
i=0
while [ $i -lt $taille ]; do 
      echo "Argument $arg: $1"
      arg=$((arg + 1))
      i=$((i + 1))
      shift 1
done
exit 0
