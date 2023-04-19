//
//  PersonListViewController.swift
//  Homework 2.11
//
//  Created by Iaroslav Beldin on 19.04.2023.
//

import UIKit

final class PersonListViewController: UITableViewController {
    
    var personList: [Person]!
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personList[indexPath.row]
        
        guard let personDetailsVC = segue.destination as? PersonDetailsViewController else { return }
        personDetailsVC.person = person
    }
}

// MARK: - UITableViewDataSource
extension PersonListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}
