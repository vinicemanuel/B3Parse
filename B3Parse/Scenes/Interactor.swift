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
    
    func loadFilesFrom(from request: RequestFiles) throws {
        let folderURL = request.folderURL
        print(folderURL)
        
        let folderWorker = FolderWorker(folderPath: folderURL)
        let filesURL = try folderWorker.getCSVFilesPaths()
        
        let resultFilesArray: [[String: [String]]] = Array(repeating: [:], count: filesURL.count)
        
        self.presenter?.createStocks(from: ResponseFiles(filesData: resultFilesArray))
    }
}
