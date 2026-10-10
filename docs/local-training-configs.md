# 本地训练配置同步（2026-10-10）

从 workspace 的 `bytedance-workflow/LlamaFactory/` 同步到个人 fork 的本地工作区 `LlamaFactory/`。上游基线为 `ce9dc9e072f80fa3abe0989d4ab90da25f083438`，对应 [hiyouga/LlamaFactory](https://github.com/hiyouga/LlamaFactory)；个人 fork 为 [MingdaLin/LlamaFactory](https://github.com/MingdaLin/LlamaFactory)。

| 同步内容 | 数量 |
| --- | --- |
| `examples/train_lora/` 自定义训练 YAML | 20 |
| `examples/merge_lora/` 自定义合并 YAML | 20 |
| 配套训练、合并 Shell 脚本 | 6 |
| `data/dataset_info.json` 新增业务登记 | 23 |

覆盖 GLS、客区任务和制作区清洁等配置，文件沿用原相对路径。只复制上游当前目录和完整 main 历史中均不存在的个人新增配置；不恢复上游已经移除的旧示例，也不覆盖上游同名配置。数据集登记采用合并方式，所有上游已有条目保持原值。

40 个 YAML 均可解析，6 个 Shell 脚本均通过 `bash -n`，复制文件 SHA-256 与源文件一致，训练配置引用的数据集均已登记、模板均可在当前上游找到。验证未启动训练或模型合并，模型、训练样本和原环境依赖需要运行时另行准备。配置保留原环境路径，实际运行前需核对模型、数据、脚本依赖以及输出位置。

本次未复制原始训练数据、权重、生成的 `.runtime/` 配置、环境文件及凭证。逐文件路径和哈希清单保存在 workspace 的 `workdata/LlamaFactory/fork-sync-20261010/sync-verification.json`。配置当前同步在本地工作区，尚未提交、推送到 GitHub。
