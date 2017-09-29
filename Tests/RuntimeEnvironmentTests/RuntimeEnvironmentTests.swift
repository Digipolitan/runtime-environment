import XCTest
import Foundation
@testable import RuntimeEnvironment

class RuntimeEnvironmentTests: XCTestCase {

    override func setUp() {
        RuntimeEnvironment.defaultBundle = Bundle(for: RuntimeEnvironmentTests.self)
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testLoadJsonEnv() {
        let env = RuntimeEnvironment.shared
        try? env.setFile("sample.prod", format: .json)

        XCTAssert(env["secure"] as? Bool == true)
    }

    func testLoadJsonWithExtensionEnv() {
        let env = RuntimeEnvironment.shared
        try? env.setFile("sample.prod.json", format: .json)

        XCTAssert(env["secure"] as? Bool == true)
    }

    func testLoadPlistEnv() {
        let env = RuntimeEnvironment.shared
        try? env.setFile("sample.prod")

        XCTAssert(env["secure"] as? Bool == false)
    }

    func testMergeEnv() {
        let env = RuntimeEnvironment.shared
        env.set("secure", true)

        XCTAssert(env["secure"] as? Bool == true)

        env.set([
            "secure": false
            ])

        XCTAssert(env["secure"] as? Bool == false)
    }
}
