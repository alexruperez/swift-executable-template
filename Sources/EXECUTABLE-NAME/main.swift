import ArgumentParser

/// EXECUTABLE-NAME
public struct EXECUTABLE-NAME: ParsableCommand {
    @Flag(help: "Show SwiftExecutableTemplate version.")
    var version: Bool

    /// Create EXECUTABLE-NAME.
    public init() {}

    /// Run EXECUTABLE-NAME.
    public func run() throws {
        guard !version else {
            print("EXECUTABLE-NAME v0.1.0")
            return
        }
        print("Hello, EXECUTABLE-NAME!")
    }
}

EXECUTABLE-NAME.main()
