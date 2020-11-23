#!/bin/bash
echo "*********************************************"
echo "*********************************************"
echo "*********************************************"
echo "******** WELCOME TO THE NIM'S GAME **********"
echo "*********************************************"
echo "*********************************************"
echo "*********************************************"

while true
do
    echo "Saisissez le nombre d'allumettes à jouer, multiple de 4."
    read  state
    if [ 'expr $state % 4' -eq 0 ]
    then
        break
    else
        echo "Veuillez saisir un nombre multiple de 4 et reéssayer !"
    fi
done

	numberIA=0 
	
	while [ $state -gt 0 ]
do
    # ============= A votre tour ===========
    echo -n "==== Le nombre d'allumettes disponible est de :"
        for i in `seq 1 $state`
        do
        echo -n " | "
        done
echo ""
echo "De 1 à 3, choisissez un chiffre pour jouer."
read move
    if [ $move -lt 1 ] || [ $move -gt 3 ]
    then
        echo " /!\ Veuillez saisir un chiffre correct de 1 à 3 ! "
        continue
    fi
    let "state = state - move"
    # ============= Tour de l'IA =============
    echo -n "§§§§ Le nombre d'allumettes disponible est de : $state"
        for i in 'seq 1 $state'
        do
        echo -n " | "
        done
echo ""
        let " numberIA = 4 - move "
        echo " IA a choisis $numberIA "
        let " state = state - $numberIA "

let " numberIA = 4 - move "
        echo " IA a choisis $numberIA "
        let " state = state - $numberIA "
done
echo " FIN DU JEUX !!! VOUS AVEZ PERDU !!! "
echo "++++++++++ LOSE LOSE LOSE LOSE ++++++++++++++"
echo "++++++++++ LOSE LOSE LOSE LOSE ++++++++++++++"
echo "++++++++++ LOSE LOSE LOSE LOSE ++++++++++++++"
