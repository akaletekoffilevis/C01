#!/bin/bash

#initialiser le compteur a 1
read -p "Entrer vos arguments : " arg
set $arg
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