import Foundation
import XCTest
import Files
import JarvisCore

class JarvisCoreTests: XCTestCase {
    func testCreatingAFile() throws {
        let fileSystem = FileSystem()
        let tempFolder = fileSystem.temporaryFolder
        let testFolder = try tempFolder.createSubfolderIfNeeded(withName: "JarvisCoreTests")
        
        try testFolder.empty()
        
        let fileManager = FileManager.default
        fileManager.changeCurrentDirectoryPath(testFolder.path)
        
        let arguments = [testFolder.path, "HelloTest.swift"]
        let jarvis = JarvisCore(arguments: arguments)
        
        try jarvis.run()
        XCTAssertNotNil(try? testFolder.file(named: "HelloTest.swift"))
    }
}
