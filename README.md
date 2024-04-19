# lpac on OpenWRT (2.0.0)
## 介绍 Presentation

lpac 是一个用 C 语言编写的 eUICC eSIM LPA 管理器。它允许使用多个后端管理 eUICC SIM 卡或模块上的 eSIM 配置文件。

lpac is a eUICC eSIM LPA manager written in C. It allows to manage eSIM profiles on eUICC SIM cards or modules using multiple backends.

# 安装 Install

当你进入你的OpenWRT构建根目录时，请将这个存储库克隆到packages/util，然后更新并安装新的feeds

Go to your openwrt build root, clone this repository into `packages/util` then update and install new feeds

```
./scripts/feeds update -a
./scripts/feeds install -a
```

然后运行 make menuconfig 并在下面选择它：

Then run `make menuconfig` and select it under:

- 在 Utilities 选择 lpac 即可

## 项目代码地址 Project Code Address
[点击即可跳转 Click to go](https://github.com/estkme-group/lpac)。
