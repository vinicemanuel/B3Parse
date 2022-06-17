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
    
    var testPathFile1: URL {
        get {
            var file = self.testFolderURL
            file.appendPathComponent("movimentacao-2022-06-14-14-22-17.csv")
            
            return file
        }
    }
    
    var testPathFile2: URL {
        get {
            var file = self.testFolderURL
            file.appendPathComponent("movimentacao-2022-06-16-14-40-36.csv")
            
            return file
        }
    }
    
    var testContentFile1: [String: [String]] = ["Movimentação": ["Transferência - Liquidação",
                                                                 "Transferência - Liquidação",
                                                                 "Transferência - Liquidação",
                                                                 "Transferência - Liquidação",
                                                                 "Rendimento",
                                                                 "Rendimento",
                                                                 "Transferência - Liquidação",
                                                                 "Rendimento",
                                                                 "Transferência - Liquidação",
                                                                 "Transferência - Liquidação",
                                                                 "Transferência - Liquidação",
                                                                 "Transferência - Liquidação",
                                                                 "Transferência - Liquidação",
                                                                 "Transferência - Liquidação"],
                                                "Produto": ["LGCP11 - LOGCP INTER FDO INV IMOB                          ",
                                                            "BCFF11 - FDO INV IMOB - FII BTG PACTUAL FUNDO DE FUNDOS    ",
                                                            "BCFF11 - FDO INV IMOB - FII BTG PACTUAL FUNDO DE FUNDOS    ",
                                                            "BCFF11 - FDO INV IMOB - FII BTG PACTUAL FUNDO DE FUNDOS    ",
                                                            "FLMA11 - FDO INV IMOB CONTINENTAL SQUARE FARIA LIMA        ",
                                                            "BCFF11 - FDO INV IMOB - FII BTG PACTUAL FUNDO DE FUNDOS    ",
                                                            "BCFF11 - FDO INV IMOB - FII BTG PACTUAL FUNDO DE FUNDOS    ",
                                                            "FLMA11 - FDO INV IMOB CONTINENTAL SQUARE FARIA LIMA        ",
                                                            "VIVR3 - VIVER INCORPORADORA E CONSTRUTORA S.A.            ",
                                                            "FLMA11 - FDO INV IMOB CONTINENTAL SQUARE FARIA LIMA        ",
                                                            "VIVR3 - VIVER INCORPORADORA E CONSTRUTORA S.A.            ",
                                                            "FLMA11 - FDO INV IMOB CONTINENTAL SQUARE FARIA LIMA        ",
                                                            "ITUB3 - ITAU UNIBANCO HOLDING S.A.                        ",
                                                            "VIVR3 - VIVER INCORPORADORA E CONSTRUTORA S.A.            "],
                                                "Quantidade": ["2",
                                                                 "1",
                                                                 "1",
                                                                 "1",
                                                                 "10",
                                                                 "1",
                                                                 "1",
                                                                 "2",
                                                                 "15",
                                                                 "8",
                                                                 "4",
                                                                 "2",
                                                                 "1",
                                                                 "11"],
                                                "Entrada/Saída": ["Credito",
                                                                 "Credito",
                                                                 "Credito",
                                                                 "Credito",
                                                                 "Credito",
                                                                 "Credito",
                                                                 "Credito",
                                                                 "Credito",
                                                                 "Debito",
                                                                 "Credito",
                                                                 "Credito",
                                                                 "Credito",
                                                                 "Credito",
                                                                 "Credito"],
                                                "Preço unitário": ["RR$\t102,97 ",
                                                                   "RR$\t100,29 ",
                                                                   "RR$\t99,99 ",
                                                                   "RR$\t99,96 ",
                                                                   "RR$\t0,02 ",
                                                                   "RR$\t0,53 ",
                                                                   "RR$\t104,60 ",
                                                                   "RR$\t0,02 ",
                                                                   "RR$\t1,50 ",
                                                                   "RR$\t5,74 ",
                                                                   "RR$\t1,53 ",
                                                                   "RR$\t6,04 ",
                                                                   "RR$\t31,79 ",
                                                                   "RR$\t1,55 "]]
}
