//
//  TestFileWorker.swift
//  B3ParseTests
//
//  Created by vinicius emanuel on 16/06/22.
//

import XCTest
@testable import B3Parse

class TestFileWorker: XCTestCase {
    private let expectedResult: [String: [String]] = ["Movimentação": ["Transferência - Liquidação",
                                                               "Transferência - Liquidação",
                                                               "Transferência - Liquidação",
                                                               "Transferência - Liquidação",
                                                               "Rendimento",
                                                               "Rendimento",
                                                               "Transferência - Liquidação",
                                                               "Rendimento",
                                                               "Transferência - Liquidação",
                                                               "Transferência - Liquidação",
                                                               "Transferência - Liquidação",
                                                               "Transferência - Liquidação",
                                                               "Transferência - Liquidação",
                                                               "Transferência - Liquidação"]]
    
    func test_open_existent_file() throws {
        let worker = FileWorker(fileURL: FilesUtil.shared.testFolderFile1)
        
        let fileContent = try worker.getFileValues()
        
        XCTAssertEqual(fileContent["Movimentação"], expectedResult["Movimentação"])
    }
}
