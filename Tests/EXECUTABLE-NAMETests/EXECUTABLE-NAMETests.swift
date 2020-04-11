import class Foundation.Bundle
import XCTest

final class EXECUTABLE-NAMETests: XCTestCase {
    func testExample() throws {
        guard #available(macOS 10.13, *) else {
            return
        }
        let fooBinary = productsDirectory.appendingPathComponent("EXECUTABLE-NAME")

        let process = Process()
        process.executableURL = fooBinary

        let pipe = Pipe()
        process.standardOutput = pipe

        try process.run()
        process.waitUntilExit()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)

        XCTAssertEqual(output, "Hello, EXECUTABLE-NAME!\n")
    }

    var productsDirectory: URL {
        #if os(macOS)
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        #endif
        return Bundle.main.bundleURL
    }

    static var allTests = [
        ("testExample", testExample)
    ]
}
