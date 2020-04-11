import ArgumentParser

struct EXECUTABLE-NAME: ParsableCommand {
    @Flag(help: "Show EXECUTABLE-NAME version.") var version: Bool

    func run() throws {
        guard !version else {
            print("0.1.0")
            return
        }
        print("Hello, EXECUTABLE-NAME!")
    }
}

EXECUTABLE-NAME.main()
