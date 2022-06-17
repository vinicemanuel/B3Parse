//
//  TestFileWorker.swift
//  B3ParseTests
//
//  Created by vinicius emanuel on 16/06/22.
//

import XCTest
@testable import B3Parse

class TestFileWorker: XCTestCase {
    
    func test_open_existent_file() throws {
        let worker = FileWorker(fileURL: FilesUtil.shared.testPathFile1)
        
        let fileContent = try worker.getFileValues()
        
        XCTAssertEqual(fileContent["Movimentação"], FilesUtil.shared.testContentFile1["Movimentação"])
    }
}
