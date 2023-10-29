#!/bin/bash

# Variabel path dan nama direktori
path="/hdfs/data/data1"
name_of_directory="data1"

# Cek apakah direktori ada
if [ -d "$path/$name_of_directory" ]; then
    echo "There is $name_of_directory Directory Exists!"
else
    echo "$name_of_directory Directory Not Exists!"
    # Buat direktori jika tidak ada
    mkdir -p "$path/$name_of_directory"
    echo "Created $name_of_directory Directory."
fi
