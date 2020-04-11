import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    [
        testCase(EXECUTABLE-NAMETests.allTests)
    ]
}
#endif
