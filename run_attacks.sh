#!/bin/bash

export NUM_EXAMPLES=200
export ATTACK=deepwordbug
export MODEL=textattack/distilbert-base-uncased

textattack attack --num-examples $NUM_EXAMPLES --parallel \
 --model-from-huggingface $MODEL-imdb \
 --dataset-from-huggingface imdb \
 --recipe $ATTACK 

echo -e "\n^ imdb\n"

textattack attack --num-examples $NUM_EXAMPLES --parallel \
 --model-from-huggingface $MODEL-CoLA \
 --dataset-from-huggingface glue^cola \
 --recipe $ATTACK 
 
echo -e "\n^ cola\n"

textattack attack --num-examples $NUM_EXAMPLES --parallel \
 --model-from-huggingface $MODEL-MRPC \
 --dataset-from-huggingface glue^mrpc \
 --recipe $ATTACK 

echo -e "\n^ mrpc\n"

textattack attack --num-examples $NUM_EXAMPLES --parallel \
 --model-from-huggingface $MODEL-QNLI \
 --dataset-from-huggingface glue^qnli \
 --recipe $ATTACK
 
echo -e "\n^ qnli\n"

textattack attack --num-examples $NUM_EXAMPLES --parallel \
 --model-from-huggingface $MODEL-RTE \
 --dataset-from-huggingface glue^rte \
 --recipe $ATTACK
 
echo -e "\n^ rte\n"

