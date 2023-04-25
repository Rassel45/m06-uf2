
#!/bin/bash
echo "Dame un numero:
read num
if (( snumero % 2 == 0 )); then
   echo "Pues $num es par"
else
   echo "Digamos que $num es impar"
fi

#Ejercicio 2


#!/bin/bash
echo "Dame un numero:"
read num
echo "El cuadrado de $numero es $[( $numero * $numero )]"

#Ejercicio 3

#!/bin/bash
echo "Escribe algo y te lo devuelvo en mayus:"
read input
echo "de nada ahora tienes lo que me habias escrito pero en mayusculas: "
echo $input | tr '[:lower:]' '[:upper:]'


#Ejercicio 4

#!/bin/bash
echo "Escribe algo y te lo devuelvo en minusculas:"
read input
echo "de nada ahora tienes lo que me habias escrito pero en minusculas: "
echo $input | tr '[:upper:]' '[:lower:]'

#Ejercicio 5
#!/bin/bash
echo "Introduse una cadena:"
read cadena
echo "Aqui vemos como la cadena se ve de forma inversa: $(echo $cadena | rev) "

#Ejercicio 6
#AsemoS.....

#!/bin/bash
echo "Introduce un numero:"
read numero
echo "Estos son los numero pares hasta $numero"
for ((x=0; x<=$numero; x+=2)); 
do
    echo "$x""
done


#Ejercicio 7
#AsemoS.....

#!/bin/bash
echo "Introduce un numero:"
read numero
echo "Estos son los numero impares hasta $numero"
for ((x=1; x<=$numero; x+=2)); 
do
  echo "$x"
done


#Ejercicio 8
#AsemoS.....

#!/bin/bash
echo "Introduce un numero:"
read numero
echo "Estos son los numero pares hasta $numero"
for ((x=2; x<=$numero; x++)); 
do
  es_primo=true
  for ((y=2; y<x; y++))
  do
    if ((x % y == 0))
    then
      no_es_primo=false
      break
    fi
  done
  if $es_primo
  then
    echo "$x"
  fi
done


#Ejercicio 9
#AsemoS.....

#!/bin/bash
echo "Dime un numero:"
read multiplicador
echo "Aqui tenemos la tabla del $multiplicador"
for ((num=0; num<=10; num++))
do
   echo "$multiplicador x $num = "$(($multiplicador*$num))
done

#Ejercicio 10
#AsemoS.....

#!/bin/bash
for ((numero=10; numero >=1; numero--))
do
   echo $numero 
done

#Ejercicio 11
#AsemoS.....

#!/bin/bash
echo "Introduce un numero:"
read numero
echo "---------------------"
contador=0
while [ $contador -le $numero ]
do
    echo $contador
    contador=$(($contador + 2))
done

#Ejercicio 12
#AsemoS.....

#!/bin/bash
echo "Ahora mismo estamos en el directorio:"
pwd
echo "Y dentro de este directorio tenemos:"
for directorio in *
do
  echo $directorio
done

#Ejercicio 13
#AsemoS.....

#!/bin/bash
echo "Ahora mismo estamos en el directorio:"
pwd
echo "Y al ejecutar la comanda ls tenemos:"
for directorio in *
do
  ls
done

#Ejercicio 14
#AsemoS.....

#!/bin/bash
echo "Introduce una ruta de origen:"
read origen
echo "Introduce una ruta de destino:"
read destino
for archivos in $origen/*
do
    cp -r "$archivos" "$destino"
done

#Ejercicio 15
#AsemoS.....

#!/bin/bash
echo "Dime la ruta de algun directorio:"
read ruta
echo "Y al ejecutar la comanda ls tenemos:"
for directorio in "$ruta"/*;
do
  du -h "$directorio"
done

#Ejercicio 16
#AsemoS.....

#!/bin/bash
echo "Introduce una cadena:"
read cadena
cadena=$(echo "$cadena" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')
cadena_inversa=$(echo "$cadena" | rev)
if [ "$cadena" == "$cadena_inversa" ];
then
   echo "La cadena ("$cadena") es un palindromo"
else
   echo "La cadena ("$cadena") no es un palindromo"
fi
'

#Ejercicio 17
#AsemoS.....

#!/bin/bash
echo "Introduce una cadena:"
read cadena
longitud_cadena=${#cadena}
for ((x=$longitud_cadena-1; x>=0; x--));
do
  cadena_inversa="$cadena_inversa${cadena:$x:1}"
done
echo "Aqui podemos ver la cadena de forma inversa: $cadena_inversa"
