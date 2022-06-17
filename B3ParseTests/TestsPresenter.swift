//
//  TestsPresenter.swift
//  B3ParseTests
//
//  Created by vinicius emanuel on 17/06/22.
//

import XCTest
@testable import B3Parse

class SpyView: DisplayStocks {
    var viewModel: StocksViewModel!
    
    func loadStocks(viewModel: StocksViewModel) {
        self.viewModel = viewModel
    }
}

class TestsPresenter: XCTestCase {
    
    let spyView = SpyView()
    
    lazy var presenter: ProcessResponse = {
       let presenter = Presenter()
        presenter.view = spyView
        return presenter
    }()
    
    func test_present_file() {
        let files = [FilesUtil.shared.testContentFile1]
        let expectedResult: [Stock] = []
        
        self.presenter.createStocks(from: ResponseFiles(filesData: files))
        
        
        XCTAssertEqual(spyView.viewModel.stocks, expectedResult)
    }
}
