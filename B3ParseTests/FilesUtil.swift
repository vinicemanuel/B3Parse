//
//  FilesUtil.swift
//  B3ParseTests
//
//  Created by vinicius emanuel on 16/06/22.
//

import Foundation

class FilesUtil {
    static let shared = FilesUtil()
    private init() {}
    
    var testFolderURL: URL {
        get {
            let bundle = Bundle(for: type(of: self))
            var folderPath: URL = bundle.resourceURL!
            folderPath.appendPathComponent("csvs")
            
            return folderPath
        }
    }
    
    var testFolderFile1: URL {
        get {
            var file = self.testFolderURL
            file.appendPathComponent("movimentacao-2022-06-14-14-22-17.csv")
            
            return file
        }
    }
    
    var testFolderFile2: URL {
        get {
            var file = self.testFolderURL
            file.appendPathComponent("movimentacao-2022-06-16-14-40-36.csv")
            
            return file
        }
    }
}
