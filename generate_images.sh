#!/bin/bash
# Bash Script automating the Image Generation Process
# Note To Self - This has to be executed from the CONDA shell

echo Generating Cool Images In Big Batches!

for image in INPUT_IMAGES/*; do
	# echo $(basename "$image")
	counter=0
	for checkpoint in CHECKPOINTS/*.ckpt; do
		# echo "$checkpoint"
		python evaluate.py --checkpoint "$checkpoint" \
		--in-path "$image" \
		--out-path OUTPUT_IMAGES/$((counter++))_$(basename "$image")
	done
done