//
//  Pair.swift
//  PairRandomizer
//
//  Created by Xavier on 11/16/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import Foundation

class Pair {
    let firstname: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstname = firstName
        self.lastName = lastName
    }
    
//    struct Pairs {
//        let sameLetter: String
//        let doubleLetter: String
//    }
}

extension Pair: Equatable {
    static func == (lhs: Pair, rhs: Pair) -> Bool {
        if lhs.firstname != rhs.firstname { return false}
        if lhs.lastName != rhs.lastName { return false }
        return true
    }
}
