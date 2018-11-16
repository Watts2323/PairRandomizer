//
//  PairController.swift
//  PairRandomizer
//
//  Created by Xavier on 11/16/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import Foundation

class PairController {
    
    //Shared Instance/ Singleton
    static let shared = PairController()
    
    //SOurce Of truth
    var pair: [Pair?] = []
    
    
    //MARK: CRUD Functions
    
    //Add random Names
    func addRandomPerson(firstName: String, lastName: String){
        //Instance of the random name or people
        let randomPerson = Pair(firstName: firstName, lastName: lastName)
        
        
    }
}
