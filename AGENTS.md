# LlamaFactory 个人 fork

[个人仓库](https://github.com/MingdaLin/LlamaFactory)，[上游](https://github.com/hiyouga/LlamaFactory)；旧 bytedance-workflow/LlamaFactory 停止新增配置维护。

用户要求同步/提交/推送时，先拉取个人 fork 的 origin/main，直接维护并推送 main，不创建 PR 或等待手动合并；不强推共享历史，不自动合并 upstream 或启动训练。

- LoRA 训练/合并配置与脚本：读 [examples](examples/AGENTS.md)。
- 数据集登记：读 [data](data/AGENTS.md)；框架实现/参数语义/测试：读 [src](src/AGENTS.md)。配置任务不默认加载整份架构文档。
- 同步历史范围见 [配置同步说明](docs/local-training-configs.md)，不是日常必读。

遵循上游规范，保留个人配置与上游数据集定义。运行前核对模型/数据路径和资源；临时输出、日志在 workspace 的 `workdata/LlamaFactory/<任务>/`。原始数据、权重、.runtime、.env.local 与凭证不入库。不主动提交、推送或删除历史文件；配置同步不等于授权启动训练。
