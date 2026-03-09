// 1102-swift
// 主应用入口

import Foundation

/// 应用主入口
public struct App {
    
    public static let name = "1102-swift"
    public static let version = "0.1.0"
    
    public init() {}
    
    /// 应用启动
    public func run() {
        print("\(Self.name) v\(Self.version) 已启动")
    }
}
