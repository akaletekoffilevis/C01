#!/bin/bash

#lire le nom du dossier  
read dossier
  #comptage du nombre de fichier
count=$(ls "$dossier" | wc -l)
file_counts=$(echo $count)
  #afficher le nombre de #fichiers present
echo "Le dossier $dossier contient $file_counts fichier(s)."
#mettre fin au script
exit 0
