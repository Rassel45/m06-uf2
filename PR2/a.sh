#!/bin/bash
#Ex1
ex17() {
    output_string=""
    for (( i=${#1}-1; i>=0; i-- )); do
        output_string="$output_string${1:$i:1}"
    done
    echo "$output_string"
}
ex17 "hola buenas tardes"
$ex17