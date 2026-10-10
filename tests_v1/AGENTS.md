# 框架测试

测试改动先读 [框架规范入口](../src/AGENTS.md)；选择对应 v0/v1 测试，设置 WANDB_DISABLED=true。遵循上游 marker，不将缺少 GPU 的跳过当作真实训练验证，不在自动化中下载业务数据或启动未授权训练。
