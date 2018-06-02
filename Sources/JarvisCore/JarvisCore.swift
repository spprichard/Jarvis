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
        
        let command = arguments[1]
        
        // this feels like it should be an enum
        switch command {
        case "file":
            print("file stuff")
        case "alert":
            Notify.showNotification()
        default:
            print("help")
        }
        
//        do {
//            try FileSystem().createFile(at: fileName)
//        } catch {
//            throw Error.failedToCreateFile
//        }
    }
}


public extension JarvisCore {
    enum Error: Swift.Error {
        case missingFileName
        case failedToCreateFile
    }
}
