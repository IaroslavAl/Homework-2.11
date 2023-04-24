//
//  PersonListViewController.swift
//  Homework 2.11
//
//  Created by Iaroslav Beldin on 19.04.2023.
//

import UIKit

final class PersonListViewController: UITableViewController {
    
    var persons: [Person]!
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let personDetailsVC = segue.destination as? PersonDetailsViewController else { return }
            
            personDetailsVC.person = persons[indexPath.row]
        }
    }
}
