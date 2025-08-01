#!/usr/bin/env bash

CURDIR=$(dirname "$(realpath "$0")")

DATASET="$CURDIR/../SWE-bench_Verified"
RUN_ID="SWE-bench_Verified"

python -m swebench.harness.run_evaluation \
    --dataset_name "$DATASET" \
    --max_workers 20 \
    --predictions_path gold \
    --run_id "$RUN_ID"
