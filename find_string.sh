#!/bin/bash

#lire le nom du fichier
read -p "Entrer le nom du fichier : " fichier
#lire la chaine a rechercher
read -p "Entrer la chaine a rechercher  : " chaine

# Recherche de la chaîne dans le fichier avec grep
if [ -f "$fichier" ]; then
    if grep -q "$chaine" "$fichier"; then
        echo "La chaîne '$chaine' a été trouvée dans $fichier."
    else
        echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
    fi
fi
#mettre fin au script
exit 0
