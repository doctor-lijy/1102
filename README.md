# 1102-swift

Swift 项目，采用 Swift Package Manager 管理。

## 项目结构

详见 [PROJECT_ARCHITECTURE.md](./PROJECT_ARCHITECTURE.md) 项目架构模块文档。

## 环境要求

- Swift 5.9+
- macOS 13+ / iOS 16+

## 快速开始

```bash
# 克隆项目
git clone git@github.com:doctor-lijy/1102-swift.git
cd 1102-swift

# 构建
swift build
```

## 在 Xcode 中打开

```bash
# Swift Package
open Package.swift

# Xcode 工程 WWSwift (iOS UIKit 应用，使用 CocoaPods)
open WWSwift.xcworkspace
```

## CocoaPods

项目使用 CocoaPods 管理三方库。

```bash
# 安装依赖（首次克隆或 Podfile 变更后执行）
pod install

# 之后请使用 .xcworkspace 打开项目，勿使用 .xcodeproj
open WWSwift.xcworkspace
```

## 许可证

MIT
