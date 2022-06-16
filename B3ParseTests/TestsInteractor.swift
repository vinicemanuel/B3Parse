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
    var response: ResponseFiles?
    
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
    
    lazy var fileURL: URL = {
        let bundle = Bundle(for: type(of: self))
        let url = bundle.url(forResource: "movimentacao-2022-06-14-14-22-17", withExtension: "xlsx")
        return url!
    }()
    
    func test_loadFilesFromURL() {
        self.interactor.loadFilesFrom(from: RequestFiles(folderURL: self.fileURL))
        let expectedResult: [[String: [String]]] = []
        XCTAssertNotEqual(self.spyPresenter.response?.filesData, expectedResult)
    }
}
