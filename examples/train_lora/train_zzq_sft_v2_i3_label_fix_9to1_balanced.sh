#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/../.."
llamafactory-cli train examples/train_lora/zzq_sft_v2_i3_label_fix_9to1_balanced_lora_sft.yaml
