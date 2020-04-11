import ArgumentParser

struct EXECUTABLE-NAME: ParsableCommand {
    @Flag(name: .short,
          help: "Show SwiftExecutableTemplate version.")
    var version: Bool

    func run() throws {
        guard !version else {
            print("EXECUTABLE-NAME v0.1.0")
            return
        }
        print("Hello, EXECUTABLE-NAME!")
    }
}

EXECUTABLE-NAME.main()
