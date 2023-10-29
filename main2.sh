#!/bin/bash

# Variabel path dan nama direktori
path="D:\Berliana\Don't open this exc Berliana\PBI Rakamin\Minggu 4"
name_of_directory="data1"

# Variabel untuk kondisi tambahan
filename_excel="daily_market_price.xlsx"
source_dir="D:\Berliana\Don't open this exc Berliana\PBI Rakamin\Minggu 4"
target_dir="$path/$name_of_directory"

# Cek apakah direktori ada
if [ -d "$target_dir" ]; then
    echo "There is $name_of_directory Directory Exists!"

    # Salin file dari direktori sumber ke direktori target
    if cp "$source_dir/$filename_excel" "$target_dir/"; then
        echo "File Moved Successfully" > "$target_dir/move_log.txt"
    else
        echo "Failed to Move File"
    fi
else
    echo "$name_of_directory Directory Not Exists!"
    # Buat direktori jika tidak ada
    mkdir -p "$target_dir"
    echo "Created $name_of_directory Directory."
fi
