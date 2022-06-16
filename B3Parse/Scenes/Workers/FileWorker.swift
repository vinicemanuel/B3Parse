//
//  FileWorker.swift
//  B3Parse
//
//  Created by vinicius emanuel on 16/06/22.
//

import Foundation

class FileWorker {
    let fileURL: URL
    
    init(fileURL: URL) {
        self.fileURL = fileURL
    }
    
    func getFileValues() -> [String: [String]] {
        return [:]
    }
}
