#!/bin/bash
list=(1 2 3 4 5 6 7 8 9 10)
Ex1(){
  str=("$@") # Convertir los parámetros de la función en un array
  for i in "${str[@]}" #Este for imprime el contenido de la lista
  do
    echo "$i"
  done
}
Ex1 "${list[@]}"

Ex2(){    
    # Creamos un array con los archivos del directorio actual
    files=($(ls))
    # Mostramos el nombre del primer archivo
    echo "El primer archivo es: ${files[0]}"
}
Ex2


Ex3(){
    list=("Hola" "Buenas" "Tardes" "Soy" "Una" "Lista")
    echo ${#list[@]} # al poner '#' hace que enseñe cuantos elementos hay en vez de imprimir el elemento en si
}
Ex3

Ex4(){
    delete=("hola" "que" "tal" "estoy acoplado")
    echo "antes de borrar"
    echo ${delete[@]}
    unset delete[$1] #unset hace que puedas eliminar un elemento especifico de la lista, si no se especifica posicion elimina la lista entera
    echo "despues de borrar"
    echo ${delete[@]}
}
Ex4 3

Ex5(){
    add=("hola" "que" "tal")
    echo "antes de añadir"
    echo ${add[@]}
    add+=("Estoy añadido y no acoplado") #el add añade a la ultima posicion de la lista el contenido que especificamos
    echo "despues de añadir"
    echo ${add[@]}
}
Ex5

Ex6(){
    posant=$(($1-1)) #esta variable sirve para cuando queramos utilizar la posicion anterior a la que queremos añadir un elemento para editar la lista
    insert=("hola" "tardes")
    insert=("${insert[$posant]}" "buenas" "${insert[$1]}") #aqui cambiamos la lista especificando la posicion donde queremos el nuevo elemento
    echo ${insert[@]}
}
Ex6 1

Ex7(){
    names=("hola" "porfa" "no" "me" "borres" "este de aqui")
    removed=()
    for name in "${names[@]}"; do
        if [[ $name != "$1" ]]; then #si este if no detecta el elemento especificado ira añadiendo elementos a otra lista para asi tener una lista borrando lo que queremos
            removed+=("$name")
        fi
    done
    echo ${removed[@]}
}
Ex7 "este de aqui"

Ex8(){
    names=("hola" "buscas" "a" "este de aqui")
    indice=-1
    for ((i=0; i<${#names[@]}; i++)); do
        if [[ "${names[i]}" == "$1" ]]; then #si este if detecta que un elemento de la lista es igual a lo que se especifica en el parametro, imprime que elemento se buscaba y su posicion en la lista
            indice=$i
            echo ${names[$indice]}
            echo "posicion $indice"
            break
        fi
    done
}
Ex8 "este de aqui"


Ex9(){
    listed=("1" "2" "3")
    sum=0
    echo ${listed[@]}
     for ((i=0; i<${#listed[@]}; i++)); do #este for suma todos los elementos de la lista de izquierda a derecha
         sum=$(($sum+${listed[i]}))
    done
    echo $sum
}
Ex9

Ex10(){
    list1=("hola" "que tal")
    list2=("somos" "una lista" "conjunta")
    listogether=()
    for value in "${list1[@]}"; do #este for añade todos los elementos de uno a uno de la list1 a la listogether
        listogether+=("$value")
    done
    for value in "${list2[@]}"; do #este for añade todos los elementos de uno a uno de la list2 a la listogether
        listogether+=("$value")
    done
    echo ${listogether[@]}
}
Ex10
