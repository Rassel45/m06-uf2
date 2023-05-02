#!/bin/bash
#Ex1
echo "Dame un numero:
read num
#Aqui lo que hace el if es que si el numero que se ha introducido da cero de residuo te dice que es par pero si no lo es te dira que es impar
if (( $num % 2 == 0 )); then
   echo "Pues $num es par"
else
   echo "Digamos que $num es impar"
fi

#Ex 2
#!/bin/bash
echo "Dame un numero:"
read num
#Este echo esneña la operacion para sacar el cuadrado del numero que se ha introducido
echo "El cuadrado de $numero es $[( $numero * $numero )]"

#Ex 3
#!/bin/bash
echo "Escribe algo y te lo devuelvo en mayus:"
read input
echo "de nada ahora tienes lo que me habias escrito pero en mayusculas: "
#Lo que hace que se ponga en mayusculas es el tr [:lower:] [:upper:] que si pones primero el upper y despues el lower en vez de imprimir en mayusculas sera en minusculas
echo $input | tr '[:lower:]' '[:upper:]'


#Ex 4
#!/bin/bash
echo "Escribe algo y te lo devuelvo en minusculas:"
read input
echo "de nada ahora tienes lo que me habias escrito pero en minusculas: "
#Lo que habia dicho en el ejercicio anterior, simplemente pones upper primero y despues lower
echo $input | tr '[:upper:]' '[:lower:]'

#Ex 5
#!/bin/bash
echo "Escribe algo y te lo devuelvo al reves:"
read input
echo "Aqui lo tienes:"
#Simplemente para que se ponga al reves el input es poniendo rev junto a la variable del input
echo $cadena | rev 

#Ex 6
#!/bin/bash
echo "Dame un numero:"
read num
#Este for lo que hace es que recorre desde el 0 hasta la variable del input pero no de 1 en 1 sino de 2 en 2 ya que asi solo se ven los pares
for ((x=0; x<=$num; x+=2)); 
do
    echo "$x""
done
echo "Esos eran todos los pares hasta el numero $num"

#Ex 7
#!/bin/bash
echo "Dame un numero:"
read num
#es la misma idea que en el ejercicio anterior pero para imprimir los impares empezamos por 1 no por 0
for ((x=1; x<=$num; x+=2)); 
do
    echo "$x""
done
echo "Esos eran todos los impares hasta el numero $num"

#Ex 9
#!/bin/bash
echo "Dame un numero y te enseñare su tabla de multiplicar:"
read num
#Un for que te imprime 10 veces una multiplicacion pero la variable tabla se le suma 1 cada vez haciendo asi una tabla de multiplicar
for ((tabla=0; tabla<=10; tabla++))
do
   echo "$num x $tabla = "$(($num*$tabla))
done

#Ex 10
#!/bin/bash
#este for recorre al reves porque se especifica num-- el tercero
for ((num=10; num >=1; num--))
do
   echo $num 
done

#Ex 11
#!/bin/bash
echo "Dame un numero: "
read num
cont=0
#en este while lo que hace es imprimirte el numero 0 pero despues se suma a si mismo con un 2 que cuando cont llega a ser igual o mayor que la variable del input, el while acaba
while [ $cont -le $num ]
do
    echo $cont
    cont=$((cont + 2))
done

#Ex 12
#!/bin/bash
echo "Estamos en este directorio: "
pwd
echo "Y dentro hay: "
#un for que por cada archivo dentro del directorio en el que estams te lo imprime
for files in *
do
  echo $files
done

#Ex 13
#!/bin/bash
echo "Estamos en este directorio: "
pwd
#este for hace lo mismo que el del anterior ejercicio pero con ls se puede ver los directorios tambien
for directory in *
do
  ls
done
echo "Eso es lo que habia en el directorio"

#Ex 14
#!/bin/bash
echo "Dame la ruta de lo que quieres copiar: "
read origen
echo "Donde quieres pegarlo: "
read destino
#Un for que copia 1 en 1 los archivos de la ruta origen hacia la destino
for files in $origen/*
do
    cp -r "$files" "$destino"
done

#Ex 15
#!/bin/bash
echo "Dame una ruta de directorio: "
read directory
echo "Aqui tienes el tamaño de los archivos que hay en ese directorio: "
#Un for que te enseña con un du el tamaño de cada archivo dentro del directorio que se especifica en la variable del input
for directory in "$ruta"/*;
do
  du -h "$directory"
done

#Ex 16
#!/bin/bash
echo "Escribeme algo y te digo si es palindromo: "
read input
#aqui hacemos una variable extra que es el input pero al reves
reverse=$(echo "$input" | rev)
#para ahora en el if compararlo con el normal y si son iguales te dira que son palindromos, si no, pos evidentemente no
if [ "$input" == "$reverse" ];
then
   echo "Esto es un palindromo"
else
   echo "Esto no es un palindromo"
fi

#Ex 17
#!/bin/bash
echo "Escribe algo y te lo devuelvo al reves: "
read input
#esta variable es una lista del input para asi...
inputlist=${#input}
#Se pueda recorrer facilmetne con un for y asi poder imprimir el input al reves
for ((x=$inputlist-1; x>=0; x--));
do
  cadena_inversa="$inputlist${input:$x:1}"
done
echo "$inputlist"