//
//  ContentView.swift
//  B3Parse
//
//  Created by vinicius emanuel on 14/06/22.
//

import SwiftUI

struct ContentView: View, DisplayStocks {
    var interactor: ProcessRequest?
    
    @State private var showingFolderPicker = false
    
    var body: some View {
        VStack {
            Button("Load folder") {
                self.showingFolderPicker = true 
            }
            .padding()
        }
        .sheet(isPresented: $showingFolderPicker) {
            FolderPicker { folderURL in
                let presenter = B3ParseFactory.createInteractor(view: self)
                try? presenter.loadFilesFrom(from: RequestFiles(folderURL: folderURL))
            }
        }
    }
    
    //MARK: - DisplayStocks
    func loadStocks(viewModel: StocksViewModel) {
        print(viewModel.stocks)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
