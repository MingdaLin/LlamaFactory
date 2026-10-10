#!/bin/bash
set -euo pipefail
set -x

cd /home/tiger/workspace/bytedance-workflow/LlamaFactory

llamafactory-cli train examples/train_lora/zzq_sft_v1_b4_3neg1pos_20260612_lora_sft.yaml
