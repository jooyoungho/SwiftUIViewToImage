import XCTest
import SwiftUI
@testable import SwiftUIViewToImage

final class SwiftUIViewToImageTests: XCTestCase {
    @MainActor
    func test() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertNotNil(Text("TEST").snapshot())
    }
}
