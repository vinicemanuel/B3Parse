//
//  FolderWorker.swift
//  B3Parse
//
//  Created by vinicius emanuel on 16/06/22.
//

import Foundation

class FolderWorker {
    let folderPath: URL
    
    init(folderPath: URL) {
        self.folderPath = folderPath
    }
    
    func getCSVFilesPaths() throws -> [URL] {
        let directoryContents = try FileManager.default.contentsOfDirectory(atPath: self.folderPath.path)
        let urls = directoryContents.compactMap({ (fileName: String) -> URL in
            
            var url = URL(string: "\(self.folderPath.path)")
            url?.appendPathComponent(fileName)
            
            return url!
        })

        return urls
    }
}
