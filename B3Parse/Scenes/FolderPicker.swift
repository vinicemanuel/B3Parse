//
//  FolderPicker.swift
//  B3Parse
//
//  Created by vinicius emanuel on 14/06/22.
//

import SwiftUI
import MobileCoreServices

struct FolderPicker: UIViewControllerRepresentable {
    let urlResponse: ((_ folderURL: URL) -> Void)?
    
    class CoordinatorForFolderSelection: NSObject, UIDocumentPickerDelegate {
        var urlResponse: ((_ folderURL: URL) -> Void)? = nil
        
        func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
            if let url = urls.first {
                self.urlResponse?(url)
            }
        }
    }
    
    func makeUIViewController(context: Context) -> UIDocumentPickerViewController {
        let documentPicker = UIDocumentPickerViewController(forOpeningContentTypes: [.folder])
        documentPicker.delegate = context.coordinator
        documentPicker.allowsMultipleSelection = false
        
        return documentPicker
    }
    
    func updateUIViewController(_ uiViewController: UIDocumentPickerViewController, context: Context) {
        
    }
    
    func makeCoordinator() -> CoordinatorForFolderSelection {
        let coordinator = CoordinatorForFolderSelection()
        coordinator.urlResponse = self.urlResponse
        return coordinator
    }
}

struct FolderPicker_Previews: PreviewProvider {
    static var previews: some View {
        FolderPicker(urlResponse: nil)
    }
}
