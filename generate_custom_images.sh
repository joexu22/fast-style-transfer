#!/bin/bash
# Bash Script automating the Image Generation Process
# Note To Self - This has to be executed from the CONDA shell


# I'M DUMB THIS DOES NOTHING
echo Generating My Own Custom Image!

for image in INPUT_IMAGES/*; do
	# echo $(basename "$image")
	python evaluate.py \
	--checkpoint NEW_STYLE/CHECKPOINTS \
	--in-path "$image" \
	--out-path OUTPUT_IMAGES/output_$(basename "$image")
done