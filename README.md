# PCL2 Minecraft 启动器整合包

> 一站式获取 PCL2 启动器 + Java 运行环境

## 📦 包含内容

| 软件 | 版本 | 说明 |
|------|------|------|
| PCL2 | v2.8.3 | Minecraft 启动器 |
| Java | 21 (Azul Zulu) | Minecraft 21w37a+ 需要 |

## 🚀 快速开始

### 方法一：使用整合包（推荐）

1. 下载 `PCL2-With-Java.zip`
2. 解压到任意目录
3. 运行 `启动 PCL2.exe`

### 方法二：分别下载

#### 1. 下载 PCL2 启动器

- 📦 **官方版**: [PCL2 Releases](https://github.com/Hex-Dragon/PCL2/releases)
- 🇨🇳 **国内高速下载**:
  - [FastGit 镜像](https://download.fastgit.org/Hex-Dragon/PCL2/releases)
  - [PCL2 下载站](https://pcl2.download/)

#### 2. 下载 Java 运行环境

> Minecraft 1.21+ 需要 Java 17 或 21

- **Azul Zulu（推荐）**:
  - [Windows x64 JDK 21](https://cdn.azul.com/zulu/bin/zulu21.38.21-ca-jdk21.0.5-win64.msi)
  - [Windows x64 JDK 17](https://cdn.azul.com/zulu/bin/zulu17.54.21-ca-jdk17.0.13-win64.msi)
- **Eclipse Temurin**:
  - [JDK 21](https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.5%2B11/OpenJDK21U-jdk_x64_windows_hotspot_21.0.5_11.zip)
  - [JDK 17](https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.13%2B11/OpenJDK17U-jdk_x64_windows_hotspot_17.0.13_11.zip)

## 📁 目录结构

```
PCL2-With-Java/
├── PCL2/
│   ├── PCL2.exe          # 启动器主程序
│   ├── Minecraft/         # 游戏文件目录
│   └── config/           # 配置文件
├── Java/                  # Java 运行环境
│   ├── bin/
│   └── lib/
└── 启动 PCL2.bat         # 一键启动脚本
```

## ⚙️ 配置说明

### 设置 Java 路径

首次启动 PCL2 时会自动检测 Java，若未检测到：

1. 点击 **设置** → **Java** → **添加 Java**
2. 选择 `Java/bin/java.exe`

### 下载游戏核心

1. 启动 PCL2
2. 点击 **下载** → **安装本体**
3. 选择版本（如 1.21.3）
4. 等待下载完成

## ❓ 常见问题

### Q: 提示 "Java 未找到"？

A: 下载上方 Java 21 并安装，然后在 PCL2 设置中指定 Java 路径

### Q: 游戏闪退？

A: 尝试更换 Java 版本（17/21），或检查 Mod 兼容性

### Q: 下载速度慢？

A: 使用国内镜像源，或配置加速器

## 📚 相关链接

- 🔧 **PCL2 官方**: [Hex-Dragon/PCL2](https://github.com/Hex-Dragon/PCL2)
- 📖 **使用文档**: [PCL2 Wiki](https://github.com/Hex-Dragon/PCL2/wiki)
- 💬 **交流群**: 912187660（Telegram）
- 🐛 **问题反馈**: [Issues](https://github.com/Hex-Dragon/PCL2/issues)

## 📄 许可证

- **PCL2**: [MIT License](https://github.com/Hex-Dragon/PCL2/blob/master/LICENSE)
- **Java (Azul Zulu)**: [Azul License](https://www.azul.com/licenses/)

---

> ⚠️ 本仓库仅提供下载链接和安装指导，版权归原作者所有
