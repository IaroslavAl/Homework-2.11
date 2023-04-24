//
//  PersonListMoreInfoViewController.swift
//  Homework 2.11
//
//  Created by Iaroslav Beldin on 19.04.2023.
//

import UIKit

final class PersonListMoreInfoViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.rows[indexPath.row]
        
        content.image = indexPath.row == 0
        ? UIImage(systemName: Contacts.phone.rawValue)
        : UIImage(systemName: Contacts.email.rawValue)
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - UITableViewDelegate
extension PersonListMoreInfoViewController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let contentView = UIView()
        
        let fullNameLabel = UILabel(
            frame: CGRect(
                x: 16,
                y: 4,
                width: tableView.frame.width,
                height: 20
            )
        )
        
        contentView.backgroundColor = .darkGray
        
        fullNameLabel.text = persons[section].fullName
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 17)
        fullNameLabel.textColor = .white
        
        contentView.addSubview(fullNameLabel)
        
        return contentView
    }
}
