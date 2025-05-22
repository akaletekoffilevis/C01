#!/bin/bash

#lire le nom du fichier
read -p "Entrer le nom du fichier : " fichier
#lire la chaine a rechercher
read -p "Entrer la chaine a rechercher  : " chaine

# Recherche de la chaîne dans le fichier avec grep
# Rechercher la chaîne dans le fichier
if [ -f "$fichier" ]; then
    grep --color=auto -q "$chaine" "$fichier"
    if [ $? -ne 0 ]; then
        echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
    # if grep -q "$chaine" "$fichier"; then
    else
        echo "La chaîne '$chaine' a été trouvée dans $fichier."
    fi
else
    echo "Le fichier n'existe pas"
fi
#mettre fin au script
exit 0
