#!/bin/bash

#lire le nom du fichier et le mot a chcher
read fichier
read mot

# La commande grep -q en shell est utilisée pour chercher un motif dans un texte, sans afficher le résultat, mais en se basant uniquement sur le code de retour (succès ou échec).
if grep -q "$mot" "$fichier" ; then
  echo "La chaîne '$mot' a été trouvée dans $fichier."
else
  echo "La chaîne '$mot' n'a pas été trouvée dans $fichier."
fi
#mettre fin au script
exit 0
