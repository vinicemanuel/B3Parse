//
//  Presenter.swift
//  B3Parse
//
//  Created by vinicius emanuel on 15/06/22.
//

import Foundation

class Presenter: ProcessResponse {
    
    //MARK: - ProcessResponse
    var view: DisplayStocks?
    
    func createStocks(from response: ResponseFiles) {
        self.view?.loadStocks(viewModel: StocksViewModel(stocks: []))
    }
}
