//
//  TestsInteractor.swift
//  B3ParseTests
//
//  Created by vinicius emanuel on 14/06/22.
//

import XCTest
@testable import B3Parse

class SpyPresenter: ProcessResponse {
    var view: DisplayStocks?
    var response: ResponseFiles!
    
    func createStocks(from response: ResponseFiles) {
        self.response = response
    }
}

class TestsInteractor: XCTestCase {
    let spyPresenter = SpyPresenter()
    
    lazy var interactor: ProcessRequest = {
       let interactor = Interactor()
        interactor.presenter = spyPresenter
        return interactor
    }()
    
    func test_load_files_from_valid_URL() throws {
        try self.interactor.loadFilesFrom(from: RequestFiles(folderURL: FilesUtil.shared.testFolderURL))
        
        XCTAssertEqual(self.spyPresenter.response.filesData[0].count, 8)
        XCTAssertEqual(self.spyPresenter.response.filesData[1].count, 8)
        
        XCTAssertEqual(self.spyPresenter.response.filesData[0]["Movimentação"]?.count, 14)
        XCTAssertEqual(self.spyPresenter.response.filesData[1]["Movimentação"]?.count, 298)
    }
}
