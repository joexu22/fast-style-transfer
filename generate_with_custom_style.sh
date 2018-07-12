#!/bin/bash
# This automates the generatrion of images using my own Custom Style

echo Generating My Own Custom Image!

for dir in INPUT_IMAGES/; do
    for file in "$dir"*; do
        image_name="$file"
		# loops and generates each of the new images useing the style
		python evaluate.py \
		--checkpoint NEW_STYLE/CHECKPOINTS \
		--in-path INPUT_IMAGES/$(basename "$image_name") \
		--out-path OUTPUT_IMAGES/output_$(basename "$image_name")
    done
done

$SHELL