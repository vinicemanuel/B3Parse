//
//  Stock.swift
//  B3Parse
//
//  Created by vinicius emanuel on 15/06/22.
//

import Foundation

struct Stock: Equatable {
    struct Keys {
        static let code = "Produto"
    }
    
    let code: String
    
    static func ==(left: Stock, right: Stock) -> Bool {
        return left.code == right.code
    }
}
