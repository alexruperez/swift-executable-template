import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(EXECUTABLE_NAMETests.allTests)
    ]
}
#endif
