import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(appwrite_swift_sdk_demoTests.allTests),
    ]
}
#endif
