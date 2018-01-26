#!/bin/bash
#I don't want to write the entire command over and over again on my bash terminal...

echo Generate A Style!

python style.py \
--checkpoint-dir NEW_STYLE/CHECKPOINTS \
--style NEW_STYLE/STYLE/style.jpg \
--train-path data/train2014

$SHELL