# 1102-swift 项目架构模块文档

## 1. 项目概述

**项目名称**: 1102-swift  
**开发语言**: Swift  
**包管理**: Swift Package Manager (SPM)  
**目标平台**: 跨平台 (iOS / macOS / Linux)

---

## 2. 架构设计原则

- **模块化**: 按功能划分模块，降低耦合
- **可测试**: 依赖注入，便于单元测试
- **可扩展**: 清晰的层次结构，便于新增功能
- **单一职责**: 每个模块/类型专注单一职责

---

## 3. 项目目录结构

```
1102-swift/
├── Package.swift                 # SPM 包配置
├── README.md
├── PROJECT_ARCHITECTURE.md       # 本文档
│
├── Sources/
│   └── App/                      # 主应用模块
│       ├── App.swift            # 应用入口
│       │
│       ├── Core/                 # 核心层
│       │   ├── Models/          # 数据模型
│       │   ├── Services/        # 业务服务
│       │   └── Utilities/       # 工具类
│       │
│       ├── Features/             # 功能模块（按特性组织）
│       │   ├── [FeatureA]/
│       │   │   ├── Models/
│       │   │   ├── Views/
│       │   │   └── ViewModels/
│       │   └── [FeatureB]/
│       │       └── ...
│       │
│       └── Shared/               # 共享组件
│           ├── Extensions/
│           └── Helpers/
│
└── Tests/
    └── AppTests/                 # 单元测试
        ├── CoreTests/
        └── FeatureTests/
```

---

## 4. 模块说明

### 4.1 Core（核心层）

| 子模块 | 职责 | 说明 |
|--------|------|------|
| **Models** | 数据模型 | 定义业务实体、DTO、值类型 |
| **Services** | 业务服务 | 网络请求、数据持久化、业务逻辑 |
| **Utilities** | 工具类 | 通用工具、扩展、常量定义 |

### 4.2 Features（功能层）

按**特性/功能**组织，每个 Feature 包含：

- **Models**: 该功能专属的数据模型
- **Views**: UI 展示（SwiftUI 或 UIKit）
- **ViewModels**: 视图逻辑与状态管理（MVVM 模式）

### 4.3 Shared（共享层）

- **Extensions**: Swift 类型扩展
- **Helpers**: 跨模块复用的辅助函数

---

## 5. 架构模式

### 5.1 MVVM（Model-View-ViewModel）

```
View ←→ ViewModel ←→ Model
         ↓
      Service
```

- **Model**: 纯数据结构
- **View**: 仅负责 UI 渲染
- **ViewModel**: 处理业务逻辑、状态管理、数据转换

### 5.2 依赖流向

```
Features → Core → Shared
```

- 上层可依赖下层，下层不依赖上层
- Shared 不依赖任何业务模块

---

## 6. 技术栈

| 类别 | 技术选型 |
|------|----------|
| 语言 | Swift 5.9+ |
| 包管理 | Swift Package Manager |
| UI 框架 | SwiftUI（可选） |
| 异步 | async/await |
| 测试 | XCTest |

---

## 7. 命名规范

| 类型 | 规范 | 示例 |
|------|------|------|
| 类型/类/结构体 | PascalCase | `UserProfile`, `NetworkService` |
| 变量/函数 | camelCase | `userName`, `fetchData()` |
| 常量 | camelCase 或 全大写下划线 | `maxRetryCount`, `API_BASE_URL` |
| 文件 | 与主类型同名 | `UserProfile.swift` |
| 协议 | 名词或 -able 后缀 | `DataSource`, `Codable` |

---

## 8. 扩展规划

- **Phase 1**: 搭建基础框架、Core 模块
- **Phase 2**: 实现首个 Feature 模块
- **Phase 3**: 完善测试、文档
- **Phase 4**: 按需添加新 Feature

---

## 9. 版本历史

| 版本 | 日期 | 说明 |
|------|------|------|
| 0.1.0 | 2025-03 | 初始架构文档 |
