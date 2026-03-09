// 1102-swift 单元测试

import XCTest
@testable import App

final class AppTests: XCTestCase {
    
    func testAppName() {
        XCTAssertEqual(App.name, "1102-swift")
    }
    
    func testAppVersion() {
        XCTAssertEqual(App.version, "0.1.0")
    }
    
    func testAppRun() {
        let app = App()
        app.run()
        // 无异常即通过
    }
}
