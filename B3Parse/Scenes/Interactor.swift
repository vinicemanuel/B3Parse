//
//  Interactor.swift
//  B3Parse
//
//  Created by vinicius emanuel on 15/06/22.
//

import Foundation

class Interactor: ProcessRequest {
    
    //MARK: - InteractorDelegate
    var presenter: ProcessResponse?
    
    func loadFilesFrom(from request: RequestFiles) {
        self.presenter?.createStocks(from: ResponseFiles(filesData: []))
    }
}
