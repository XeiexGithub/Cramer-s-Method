#!/bin/bash

echo -e "Select Runtime Mode | "

read -r run

case $run in
2)
    case_2
;;
3)
    case_3
;;
esac

case_2 ()
{
    echo -e "Input the following values after analyzing the equation.\nRemember if the variable is not there then it's coefficent is 0"
    echo -ne "a1: "
    read -r a_1
    echo -ne "a2: "
    read -r a_2
    echo -ne "b1: "
    read -r b_1
    echo -ne "b2: "
    read -r b_2
    echo -ne "c1: "
    read -r c_1
    echo -ne "c2: "
    read -r c_2

    echo -e "Dₘ = | $a_1   $b_1 |"
    echo -e "     | $a_2   $b_2 |"

    d_m=$(($a_1 * $b_2 - $a_2 * $b_1))

    echo -e "Determinate main: $d_m"

    echo -e "Dₓ = | $c_1   $b_1 |"
    echo -e "     | $c_2   $b_2 |"

    d_x=$(($c_1 * $b_2 - $c_2 * $b_1))

    echo -e "Determinate x: $d_x"

    echo -e "Dᵧ = | $a_1   $c_1 |"
    echo -e "     | $a_2   $c_2 |"

    d_y=$(($a_1 * $c_2 - $a_2 * $c_1))

    echo -e "Determinate y: $d_y"
}
