#!/bin/bash

#recuperation des arguments
read arg
set $arg
#effectue l'operation en fonction de l'operateur op
case $3 in
+) result=$(($1 + $2)) ;;
-) result=$(($1 - $2)) ;;
\*) result=$(($1 * $2)) ;;
/)
    # verification si le diviseur est different de 0
    if [ "$1" -eq 0]; then
        echo "Erreur: Division par 0"
    else
        result=$(($1 / $2))
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
