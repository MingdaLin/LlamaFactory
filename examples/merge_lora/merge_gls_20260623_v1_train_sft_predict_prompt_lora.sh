#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/../.."

llamafactory-cli export examples/merge_lora/gls_20260623_v1_train_sft_predict_prompt_lora_sft.yaml
