#!/bin/bash

#recuperation des arguments
arg1=$1
arg2=$2
op=$3

#effectue l'operation en fonction de l'operateur op
case $op in
+) result=$((arg1 + arg2)) ;;
-) result=$((arg1 - arg2)) ;;
\*) result=$((arg1 * arg2)) ;;
/)
    # verification si le diviseur est different de 0
    if [ "$arg1" -eq 0]; then
        echo "Erreur: Division par 0"
    else
        result=$((arg1 / arg2))
    fi
    ;;
*)
    echo "Opérateur non valide. Utiliser +, -, * ou /."
    exit 1
    ;;
esac
#affichage du resultat
echo "Résultat : $result"
#mettre fin au script
exit 0


#!/bin/bash
read argu 
set $argu
if [ $3 = "+" ]; then
      let reponse=$(( $1+$2 ))
      echo "Résultat : $reponse"
      exit 0
elif [ $3 = "-" ]; then
      let reponse=$(( $1-$2 ))
      echo "Résultat : $reponse"
      exit 0
elif [ $3 = "/" ]; then
      let reponse=$(( $1/$2 ))
      echo "Résultat : $reponse"
      exit 0
else
      let reponse=$(( $1*$2 ))
      echo "Résultat : $reponse"
      exit 0
fi