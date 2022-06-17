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
        
        var resultFilesArray: [[String: [String]]] = []
        
        for fileURL in filesURL {
            let fileWorker = FileWorker(fileURL: fileURL)
            let fileColumns = try fileWorker.getFileValues()
            resultFilesArray.append(fileColumns)
        }
        
        self.presenter?.createStocks(from: ResponseFiles(filesData: resultFilesArray))
    }
}
