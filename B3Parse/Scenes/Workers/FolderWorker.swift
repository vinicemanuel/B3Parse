//
//  FolderWorker.swift
//  B3Parse
//
//  Created by vinicius emanuel on 16/06/22.
//

import Foundation

class FolderWorker {
    private let folderPath: URL
    
    init(folderPath: URL) {
        self.folderPath = folderPath
    }
    
    func getCSVFilesPaths() throws -> [URL] {
        let directoryContents = try FileManager.default.contentsOfDirectory(atPath: self.folderPath.path)
        let urls = directoryContents.compactMap({ (fileName: String) -> URL in
            let path = "file://\(self.folderPath.path)/\(fileName)"
            var url = URL(string: path)
            
            return url!
        })
    
        return urls
    }
}
