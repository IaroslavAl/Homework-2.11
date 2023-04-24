//
//  PersonListTabBarViewController.swift
//  Homework 2.11
//
//  Created by Iaroslav Beldin on 19.04.2023.
//

import UIKit

final class PersonListTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let personListVC = viewControllers?.first as? PersonListViewController else { return }
        guard let personListMoreInfoVC = viewControllers?.last as? PersonListMoreInfoViewController else { return }
        
        let persons = Person.getPersons()
        personListVC.persons = persons
        personListMoreInfoVC.persons = persons
    }
}
