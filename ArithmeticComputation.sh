#!/bin/bash -x

read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c

echo `awk 'BEGIN{printf("%0.2f", '$c' + '$a' / '$b' )}'`