//
//  PairListTableViewController.swift
//  PairRandomizer
//
//  Created by Xavier on 11/16/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import UIKit

class PairListTableViewController: UITableViewController {
    
    var numOfSections: Int = 0
    var groupedNamesSections: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func randomizeButtonTapped(_ sender: UIButton) {
        PairController.shared.pairs.shuffle()
    }
    @IBAction func addButtonTaped(_ sender: UIBarButtonItem) {
        presentAlertController()
        
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        if PairController.shared.pairs.count % 2 == 1 {
            numOfSections = PairController.shared.pairs.count-1/2
        } else {
            numOfSections = PairController.shared.pairs.count/2
        }
        return numOfSections
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PairController.shared.pairs.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "randomCell", for: indexPath)
        
        let randomPairIndex = PairController.shared.pairs[indexPath.row]
        cell.textLabel?.text = randomPairIndex.firstname
        
        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let randomPairIndex = PairController.shared.pairs[indexPath.row]
            
            PairController.shared.deleteRandoms(randoms: randomPairIndex)
        }
    }

}
extension PairListTableViewController {
    
    func presentAlertController(){
    
        let alertController = UIAlertController(title: "Add your reason", message: nil, preferredStyle: .alert)
        
        alertController.addTextField { (nameTextField) in
            nameTextField.placeholder = "Enter Your Name"
            
        }
        
        alertController.addTextField { (reasonTextField) in
            reasonTextField.placeholder = " 😡"
        }
}
}
