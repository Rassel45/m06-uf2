#!/bin/bash
#Ex1
ex1(){
    #Aqui lo que hace el if es que si el numero que se ha introducido da cero de residuo te dice que es par pero si no lo es te dira que es impar
    if (( $1 % 2 == 0 )); then
       echo "Pues $1 es par"
    else
       echo "Digamos que $1 es impar"
    fi
}
ex1 3
#Ex 2
#Este echo esneña la operacion para sacar el cuadrado del numero que se ha introducido
ex2(){
echo "El cuadrado de $1 es $[( $1 * $1 )]"
}
ex2 2
#Ex 3
ex3(){
    #Lo que hace que se ponga en mayusculas es el tr [:lower:] [:upper:] que si pones primero el upper y despues el lower en vez de imprimir en minusculas sera en mayusculas
    echo $1 | tr '[:lower:]' '[:upper:]'
}
ex3 "hola me obligan a ser un texto en mayusculas"

#Ex 4
ex4(){
    #Lo que habia dicho en el ejercicio anterior, simplemente pones upper primero y despues lower
    echo $1| tr '[:upper:]' '[:lower:]'
}
ex4 "HOLA SOY UN TEXTO EN MINUSCULAS"
#Ex 5
ex5() {
    #en este pillamos el input, lo metemos en una lista en otra variable y despues hacemos un for para que guarde letra por letra pero desde el final hasta el principio del input
    echo "$1"
    len="${#1}"
    reversed=""
    for (( i=len-1; i>=0; i-- )); do
        reversed="$reversed${1:$i:1}"
    done
    echo "$reversed"
}
ex5 "ayuda"

#Ex 6
ex6(){
    #Este for lo que hace es que recorre desde el 0 hasta la variable del input pero no de 1 en 1 sino de 2 en 2 ya que asi solo se ven los pares
    for ((x=0; x<=$1; x+=2)); 
    do
        echo "$x"
    done
    echo "Esos eran todos los pares hasta el numero $1"
}
ex6 10
#Ex 7
ex7(){
#es la misma idea que en el ejercicio anterior pero para imprimir los impares empezamos por 1 no por 0
    for ((x=1; x<=$1; x+=2)); 
    do
        echo "$x"
    done
    echo "Esos eran todos los impares hasta el numero $1"
}
ex7 10
#Ex 9
ex9(){
    #Un for que te imprime 10 veces una multiplicacion pero la variable tabla se le suma 1 cada vez haciendo asi una tabla de multiplicar
    for ((tabla=0; tabla<=10; tabla++))
    do
       echo "$1 x $tabla = "$(($1*$tabla))
    done
}
ex9 2
#Ex 10
ex10(){
    #este for recorre al reves porque se especifica num-- el tercero
    for ((num=10; num >=1; num--))
    do
       echo $num 
    done
}
ex10 
#Ex 11
ex11(){
    cont=0
    #en este while lo que hace es imprimirte el numero 0 pero despues se suma a si mismo con un 2 que cuando cont llega a ser igual o mayor que la variable del input, el while acaba
    while [ $cont -le $1 ]
    do
        echo $cont
        cont=$((cont + 2))
    done
}
ex11 15
#Ex 12
ex12(){
    echo "Estamos en este directorio: "
    pwd
    echo "Y dentro hay: "
    #un for que por cada archivo dentro del directorio en el que estams te lo imprime
    for files in *
    do
      echo $files
    done
}
ex12
#Ex 13
ex13(){
    echo "Estamos en este directorio: "
    pwd
    #este for hace lo mismo que el del anterior ejercicio pero con ls se puede ver los directorios tambien
    for directory in *
    do
      ls
    done
    echo "Eso es lo que habia en el directorio"
}
ex13
#Ex 14
ex14(){
    #Un for que copia 1 en 1 los archivos de la ruta origen hacia la destino
    for files in $1/*
    do
        cp -r "$files" "$2"
    done
}
ex14 "/workspaces/m06-uf2/PR3" "/workspaces/m06-uf2/PR2"
#Ex 15
ex15(){
    #Un for que te enseña con un du el tamaño de cada archivo dentro del directorio que se especifica en la variable del input
    for directory in "$1"/*;
    do
      du -h "$directory"
    done
}
ex15 "/workspaces/m06-uf2/PR3"
#Ex 16
ex16() {
    #en este pillamos el input y lo pasamos a una lista para que la variable reversed recoga letra por letra al reves para asi comprobar si son los 2 iguales
    str="$1"
    reversed=""
    for (( i=${#str}-1; i>=0; i-- )); do
        reversed="$reversed${str:$i:1}"
    done
    if [ "$str" == "$reversed" ]; then
        echo "La cadena '$str' es un palíndromo."
    else
        echo "La cadena '$str' no es un palíndromo."
    fi
}
ex16 "girafarig"

#Ex 17
ex17(){
    #en este ejercicio pillamos el input y lo pasamos a una lista para poder imprimirlo al reves guardandolo en otra variable
    output_string=""
    for (( i=${#1}-1; i>=0; i-- )); do
        output_string="$output_string${1:$i:1}"
    done
    echo "$output_string"
}
ex17 "hola buenas tardes"


$ex1
$ex2
$ex3
$ex4
$ex5
$ex6
$ex7
$ex9
$ex10
$ex11
$ex12
$ex13
$ex14
$ex15
$ex16
$ex17