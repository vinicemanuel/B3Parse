//
//  FileWorker.swift
//  B3Parse
//
//  Created by vinicius emanuel on 16/06/22.
//

import Foundation
import SwiftCSV

class FileWorker {
    private let fileURL: URL
    private var csv: CSV?
    
    
    init(fileURL: URL) {
        self.fileURL = fileURL
    }
    
    func getFileValues() throws -> [String: [String]] {
        if self.csv == nil {
            self.csv = try CSV(url: self.fileURL)
        }
        
        guard let csv = self.csv else { return [:] }
        
        var columns: [String: [String]] = [:]
        
        for column in csv.enumeratedColumns {
            print(column)
            columns[column.header] = column.rows
        }
        
        return columns
    }
}
