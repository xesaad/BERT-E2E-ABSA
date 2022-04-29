#!/usr/bin/env bash
TASK_NAME="random_samples_lapt14"
ABSA_HOME="./bert-san-random_samples_lapt14-finetune"
CUDA_VISIBLE_DEVICES=0 python work.py --absa_home ${ABSA_HOME} \
                      --ckpt ${ABSA_HOME}/checkpoint-1400 \
                      --model_type bert \
                      --data_dir ./data/${TASK_NAME} \
                      --task_name ${TASK_NAME} \
                      --model_name_or_path bert-large-uncased \
                      --cache_dir ./cache \
                      --max_seq_length 128 \
                      --tagging_schema BIEOS
