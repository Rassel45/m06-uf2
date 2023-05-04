#!/bin/bash
Ex1(){
    nums=("$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8" "$9" "${10}")
    echo ${nums[@]}
}
Ex1 1 2 3 4 5 6 7 8 9 10
$Ex1



Ex3(){
    list=("Hola" "Buenas" "Tardes" "Soy" "Una" "Lista")
    echo ${#list[@]}
}
Ex3
$Ex3

Ex4(){
    delete=("hola" "que" "tal" "estoy acoplado")
    echo "antes de borrar"
    echo ${delete[@]}
    unset delete[$1]
    echo "despues de borrar"
    echo ${delete[@]}
}
Ex4 3
$Ex4

Ex5(){
    add=("hola" "que" "tal")
    echo "antes de añadir"
    echo ${add[@]}
    add+=("Estoy añadido y no acoplado")
    echo "despues de añadir"
    echo ${add[@]}
}
Ex5
$Ex5

Ex6(){
    posant=$(($1-1))
    insert=("hola" "tardes")
    insert=("${insert[$posant]}" "buenas" "${insert[$1]}")
    echo ${insert[@]}
}
Ex6 1
$Ex6

Ex7(){
    names=("hola" "porfa" "no" "me" "borres" "este de aqui")
    removed=()
    for name in "${names[@]}"; do
        if [[ $name != "$1" ]]; then
            removed+=("$name")
        fi
    done
    echo ${removed[@]}
}
Ex7 "este de aqui"
$Ex7

Ex8(){
    names=("hola" "buscas" "a" "este de aqui")
    indice=-1
    for ((i=0; i<${#names[@]}; i++)); do
        if [[ "${names[i]}" == "$1" ]]; then
            indice=$i
            echo ${names[$indice]}
            echo "posicion $indice"
            break
        fi
    done
}
Ex8 "este de aqui"
$Ex8

Ex9(){
    listed=("1" "2" "3")
    sum=0
    echo ${listed[@]}
     for ((i=0; i<${#listed[@]}; i++)); do
         sum=$(($sum+${listed[i]}))
    done
    echo $sum
}
Ex9
$Ex9

Ex10(){
    list1=("hola" "que tal")
    list2=("somos" "una lista" "conjunta")
    listogether=()
    for value in "${list1[@]}"; do
        listogether+=("$value")
    done
    for value in "${list2[@]}"; do
        listogether+=("$value")
    done
    echo ${listogether[@]}
}
Ex10
$Ex10