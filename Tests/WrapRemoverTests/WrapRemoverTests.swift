import XCTest
@testable import WrapRemover

final class WrapRemoverTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(
            WrapRemover(text: "a").main(),
            "a"
        )
    }
}
