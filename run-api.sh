#!/usr/bin/env bash

CURDIR=$(dirname "$(realpath "$0")")

export QWEN3_API_BASE="http://172.27.33.108:30001/v1/"
export OPENAI_API_KEY="sk-123456"
MODEL_NAME="Qwen3-32B"

DATASET_NAME="SWE-bench_Verified"
DATASET_PATH=$(realpath "$CURDIR/../$DATASET_NAME/data")

python3 -m swebench.inference.run_api \
    --dataset_name_or_path "$DATASET_PATH" \
    --model_name_or_path "$MODEL_NAME" \
    --output_dir "$CURDIR/output/$DATASET_NAME/$MODEL_NAME"