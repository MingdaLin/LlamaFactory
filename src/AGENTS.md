# 框架开发与测试

- 框架/参数语义改动先读 [上游规范](../.ai/CLAUDE.md)，遵循 v0/v1 分层、Python 3.11+、Ruff 与 Apache 头要求；不把架构规则复制到个人配置文档。
- `USE_V1` 区分两条架构，修改前定位 CLI、hparams、data、model、train/chat 的实际调用路径。
- 测试设 `WANDB_DISABLED=true`；按变更选择 tests 或 tests_v1 定向测试，代码质量/许可使用上游 make 入口。GPU/slow 测试先核对硬件与授权，失败说明环境限制。
