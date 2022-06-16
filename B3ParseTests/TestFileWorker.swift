//
//  TestFileWorker.swift
//  B3ParseTests
//
//  Created by vinicius emanuel on 16/06/22.
//

import XCTest
@testable import B3Parse

class TestFileWorker: XCTestCase {
    
    func test_open_existent_file() {
        let worker = FileWorker(fileURL: FilesUtil.shared.testFolderFile1)
        
        let fileContent = worker.getFileValues()
        let expectedResult: [String: [String]] = [:]
        
        XCTAssertNotEqual(fileContent, expectedResult)
    }
}
