//
//  TestFolderWorker.swift
//  B3ParseTests
//
//  Created by vinicius emanuel on 16/06/22.
//

import XCTest
@testable import B3Parse

class TestFolderWorker: XCTestCase {
    
    func test_load_existent_folder() throws {
        let worker = FolderWorker(folderPath: FilesUtil.shared.testFolderURL)
        
        let filesURL = try worker.getCSVFilesPaths()
        
        XCTAssertEqual(filesURL[0].path, FilesUtil.shared.testPathFile1.path)
        XCTAssertEqual(filesURL[1].path, FilesUtil.shared.testPathFile2.path)
        
        XCTAssertTrue(filesURL[0].isFileURL)
        XCTAssertTrue(filesURL[1].isFileURL)
    }
}
