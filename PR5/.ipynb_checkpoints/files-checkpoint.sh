#!/bin/bash

Ex1() {
    # Recibe el array de numeros como primer parámetro
    list=("$@")
    
    # Guarda el contenido del array en un fichero llamado "nums.txt"
    echo "${list[@]}" > nums.txt
    
    cat nums.txt
}
numlist=(1 2 3 4 5 6 7 8 9 10)
Ex1 "${numlist[@]}"

Ex2() {
   # Crea un array con los archivos del directorio actual
    files=($(ls -1))

    # Guarda el contenido del array en un fichero llamado "files.txt"
    printf '%s\n' "${files[@]}" > files.txt
    
    # Muestra el nombre del primer item que se encuentra en el archivo
    item=$(head -n1 files.txt)
    echo "El primer item en el archivo es: $item"
}
Ex2

Ex3() {
    # Recibe el nombre del fichero como primer parametro
    file=$1
    
    # Cuenta el numero de lineas del fichero
    numline=$(wc -l < "$file")
    
    echo "El fichero $file tiene $numline lineas"
}
Ex3 "nums.txt"

Ex4() {
    # Recibe el nombre del fichero como primer parametro
    file=$1
    
    # este comando sobreescribe el fichero original con el resultado (que es el mismo fichero pero la primera linea borrada)
    tail -n +2  "$file" > "$file.tmp" && mv "$file.tmp" "$file"
    
    echo "La primera linea del fichero $file ha sido eliminada"
}
Ex4 "test.txt"

Ex5() {
    # Recibe el nombre del fichero como primer parametro
    file=$1
    
    # este comando sobreescribe el fichero original con el resultado (que es el mismo fichero pero la ultima linea borrada)
    head -n $(($(wc -l < "$file"))) "$file" > "$file.tmp" && mv "$file.tmp" "$file"
    
    echo "La ultima linea del fichero $file ha sido eliminada"
}
Ex5 "test2.txt"

Ex6() {
    # Recibe el nombre del fichero como primer parametro y el texto a insertar como segundo parametro
    file=$1
    text="$2"
    
    # Crea un archivo temporal para almacenar el contenido del fichero original sin la primera linea
    tmp_file=$(mktemp)
    tail -n +2 "$file" > "$tmp_file"
    
    # Inserta el texto en la primera línea del archivo temporal
    echo "$text" | cat - "$tmp_file" > "$file"
    
    # Borra el archivo temporal
    rm "$tmp_file"

    echo "Se ha insertado el texto $text en la primera linea del fichero $file"
}
Ex6 "ex6.txt" "Hola bom dia"

Ex7() {
    # Recibe el nombre del fichero como primer parámetro y el texto a insertar como segundo parámetro
    file=$1
    text="$2"
    
    # Inserta el texto en la última línea del fichero utilizando el comando "echo" y con ">>" indicamos a que archivo se guardara el texto 
    echo "$text" >> "$file"
    
    echo "Se ha insertado el texto $text en la ultima línea del fichero $file"
}
Ex7 "ex6.txt" "que tal"
