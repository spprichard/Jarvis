import Foundation
import Files

public final class JarvisCore {
    private let arguments: [String]
    
    // CommandLine comes from the standard library
    public init(arguments: [String] = CommandLine.arguments) {
        self.arguments = arguments
    }
    
    public func run() throws {
        guard arguments.count > 1 else {
            throw Error.missingFileName
        }
        
        let fileName = arguments[1]
        
        do {
            try FileSystem().createFile(at: fileName)
        } catch {
            throw Error.failedToCreateFile
        }
    }
}


public extension JarvisCore {
    enum Error: Swift.Error {
        case missingFileName
        case failedToCreateFile
    }
}
