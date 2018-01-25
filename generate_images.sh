#!/bin/bash
# Bash Script automating the Image Generation Process
# Note To Self - This has to be executed from the CONDA shell

echo Generating Cool Images In Big Batches!

# process each image
#or image_file INPUT_IMAGES/*; do
#	# generates a new file each time do things don't get clobbered
#	counter=0
#	# use each checkpoint
#	for checkpoint in CHECKPOINTS/*.ckpt; do
#		python evaluate.py --checkpoint "$checkpoint" \
#			--in-path INPUT_IMAGES/"$image_file" \
#			--out-path OUTPUT_IMAGES/"$image_file"$((counter)).jpeg
#	done
#done

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

: <<'END'
for image_file in INPUT_IMAGES/*; do
	counter=0
	for checkpoint in CHECKPOINTS/*.ckpt; do
		echo "$checkpoint"
		python evaluate.py --checkpoint "$checkpoint" --in-path INPUT_IMAGES/"$image_file" --out-path OUTPUT_IMAGES/output$((counter++)).jpeg
	done
done
END

#for filename in CHECKPOINTS/*.ckpt; do
#	echo "$filename"
#	python evaluate.py --checkpoint "$filename" --in-path INPUT_IMAGES/beach.jpeg --out-path OUTPUT_IMAGES/output$((counter++)).jpeg
#done


# Getting Pictures To Be Batch Processed
#python evaluate.py --checkpoint checkpoints/la_muse.ckpt --in-path INPUT_IMAGES/beach.jpeg --out-path TEST/

# Debugging keeping the shell open
$SHELL
