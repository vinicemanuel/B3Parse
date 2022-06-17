//
//  Presenter.swift
//  B3Parse
//
//  Created by vinicius emanuel on 15/06/22.
//

import Foundation

class Presenter: ProcessResponse {
    
    private func processFile(file: [String: [String]]) -> [Stock] {
        let codes: [String] = file[Stock.Keys.code] ?? []
        var stocks: [Stock] = []
        
        for (_, code) in codes.enumerated() {
            if stocks.contains(where: {$0.code == code}) {
                
            } else {
                stocks.append(Stock(code: code))
            }
        }
        
        return stocks
    }
    
    //MARK: - ProcessResponse
    var view: DisplayStocks?
    
    func createStocks(from response: ResponseFiles) {
        self.view?.loadStocks(viewModel: StocksViewModel(stocks: []))
    }
}
