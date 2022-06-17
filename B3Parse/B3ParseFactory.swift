//
//  B3ParseFactory.swift
//  B3Parse
//
//  Created by vinicius emanuel on 15/06/22.
//

import Foundation

class B3ParseFactory {
    static func createInteractor(view: DisplayStocks) -> Interactor {
        let interactor = Interactor()
        let presenter = Presenter()
        
        presenter.view = view
        interactor.presenter = presenter
        
        return interactor
    }
}

//MARK: - protocols
protocol ProcessRequest {
    var presenter: ProcessResponse? { get set }
    func loadFilesFrom(from request: RequestFiles) throws
}

protocol ProcessResponse {
    var view: DisplayStocks? { get set }
    func createStocks(from response: ResponseFiles)
}

protocol DisplayStocks {
    func loadStocks(viewModel: StocksViewModel)
}

//MARK: - Models
struct RequestFiles {
    let folderURL: URL
}

struct ResponseFiles {
    let filesData: [[String: [String]]]
}

struct StocksViewModel {
    let stocks: [Stock]
}
