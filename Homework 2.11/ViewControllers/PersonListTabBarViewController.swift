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
        let personList = Person.getPersons()
        
        viewControllers?.compactMap({ $0 as? UINavigationController }).forEach { navigationVC in
            if let personListVC = navigationVC.topViewController as? PersonListViewController {
                personListVC.personList = personList
            } else if let personListMoreInfoVC = navigationVC.topViewController as? PersonListMoreInfoViewController {
                personListMoreInfoVC.personList = personList
            }
        }
    }
}
