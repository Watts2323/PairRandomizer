//
//  PairController.swift
//  PairRandomizer
//
//  Created by Xavier on 11/16/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//


//Thoughts of how the app should function: Click the add button and a alert controller pops up asking you to enter your full name> After you  enter the names you want and it add it to the tableview hyiu cqan cloick a button that randomizes the name in a random order.

import Foundation

class PairController {
    
    //Shared Instance/ Singleton
    static let shared = PairController()
    //To make it a true Shared instance
    private init() {}
    
    //SOurce Of truth
    var pairs: [Pair] = [] {
        didSet{
            namesInSection(arrayOfRandoms: PairController.shared.pairs)
        }
    }
    
//    func mocData(){
//        var randomPeepsName = Pair(firstName: "James", lastName: "Lee")
//        var randomPeepsName = Pair(firstName: "Neon", lastName: "Carter")
//        var randomPeepsName = Pair(firstName: "Brad", lastName: "Wills")
//        var randomPeepsName = Pair(firstName: "William", lastName: "Wade")
//    }
    
    //Make Groups: Display a list of the added entities grouped by section
    var groupNamesInSection: [Int] = []
    func namesInSection(arrayOfRandoms: [Pair]){
        var displayGroupedNames = 0
        if arrayOfRandoms.count % 2 == 1 {
            displayGroupedNames = (arrayOfRandoms.count-1)/2
        } else {
            displayGroupedNames = (arrayOfRandoms.count)/2
        }
        for names in arrayOfRandoms {
            groupNamesInSection.append(2)
        }
        if arrayOfRandoms.count % 2 == 1 {
            groupNamesInSection.append(1)
        }

    }
    
//    func namesInSecton(arrayOfRandoms: [Pair]){
//        var groupOfNamesInSection: [Int] = []
//        let sortedNames = groupOfNamesInSection.sorted { ($0., <#Int#>) -> Bool in
//            <#code#>
//        }
////        let predicate = NSPredicate(format: <#T##String#>, <#T##args: CVarArg...##CVarArg#>)
//        if arrayOfRandoms
//    }
    
    
    //MARK: CRUD Functions
    
    //save
    func saveRandoms(randoms:Pair){
        pairs.append(randoms)
    }
    
    func deleteRandoms(randoms: Pair) {
//        let index = PairController.shared.pair.remove(at: index)
    }
}
