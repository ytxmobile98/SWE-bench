#!/usr/bin/env bash

python -m swebench.harness.run_evaluation \
    --predictions_path gold \
    --max_workers 16 \
    --instance_ids sympy__sympy-20590 \
    --run_id validate-gold
