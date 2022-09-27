#!/bin/bash -x

read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c

declare -A expression

p=$(( $a + $b * $c ))

q=$(( $a * $b + $c ))

r=`awk 'BEGIN{printf("%0.2f", '$c' + '$a' / '$b' )}'`

s=$(( $a % $b + $c ))

expression[1]=$p
expression[2]=$q
expression[3]=$r
expression[4]=$s

echo ${expression[@]}

for(( count=1; count<=4; count++ ))
do
	array[$count]=${expression[$count]}
done

echo Array : ${array[@]}

