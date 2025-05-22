#!/bin/bash

#lire le nom du dossier
read -p "Entrer le nom du dossier : " dossier 
#verification de l'existence du dossier
if [ -d "$dossier" ]; then
      #comptage du nombre de fichier
      file_count=$(ls -1 "$dossier" | wc -l)
      #afficher le nombre de fichiers present
      echo "Le dossier $dossier contient $file_count fichier(s)."
fi

#mettre fin au script
exit 0
