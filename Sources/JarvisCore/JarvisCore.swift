import Foundation

public final class JarvisCore {
    private let arguments: [String]
    
    // CommandLine comes from the standard library
    public init(arguments: [String] = CommandLine.arguments) {
        self.arguments = arguments
    }
    
    public func run() throws {
        print("Hello world")
    }
}
