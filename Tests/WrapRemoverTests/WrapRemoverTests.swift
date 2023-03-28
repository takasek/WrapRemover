import XCTest
@testable import WrapRemover

final class WrapRemoverTests: XCTestCase {
    func testExample() async throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let result = await WrapRemover(text: "a", font: Font.systemFont(ofSize: 12.0)).execute()
        XCTAssertEqual(
            result,
            "a"
        )
    }
}
