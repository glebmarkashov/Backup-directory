#!/bin/bash
for (( i=1; i <= 4; i+=2 )); do
        case $1 in
                "--input_dir") in_fol=$2;;
                "--output_dir") back_fol=$2;;
        esac
        shift
        shift
done

mkdir -p $back_fol
find $in_fol -type f -exec cp --backup=numbered "{}" $back_fol \;

echo "Done"
