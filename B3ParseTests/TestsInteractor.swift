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
        let expectedResult: [[String: [String]]] = [[:], [:]]
        
        XCTAssertEqual(self.spyPresenter.response.filesData, expectedResult)
    }
}
