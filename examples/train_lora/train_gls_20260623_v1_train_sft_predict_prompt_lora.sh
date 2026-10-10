#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/../.."

python3 ../luckin_coffee/gls/sft_sample/20260623_V1/scripts/convert_openai_jsonl_to_llamafactory.py
if [[ ! -e "${MODEL_NAME_OR_PATH:-/mnt/bn/linmingda/ai/open_model/Qwen3.6-27B}" ]]; then
  echo "ERROR: model_name_or_path 不存在: ${MODEL_NAME_OR_PATH:-/mnt/bn/linmingda/ai/open_model/Qwen3.6-27B}" >&2
  exit 2
fi
if [[ -z "${NPROC_PER_NODE:-}" ]]; then
  if command -v nvidia-smi >/dev/null 2>&1; then
    NPROC_PER_NODE="$(nvidia-smi -L | wc -l | tr -d ' ')"
  else
    NPROC_PER_NODE=1
  fi
fi
NPROC_PER_NODE="$NPROC_PER_NODE" llamafactory-cli train examples/train_lora/gls_20260623_v1_train_sft_predict_prompt_lora_sft.yaml
