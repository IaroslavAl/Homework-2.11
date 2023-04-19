//
//  PersonListTabBarViewController.swift
//  Homework 2.11
//
//  Created by Iaroslav Beldin on 19.04.2023.
//

import UIKit

class PersonListTabBarViewController: UITabBarController {
    
    let personList = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers?.compactMap({ $0 as? UINavigationController }).forEach { navigationVC in
            
            if let personListVC = navigationVC.topViewController as? PersonListViewController {
                personListVC.personList = personList
            } else if let personListMoreInfoVC = navigationVC.topViewController as? PersonListMoreInfoViewController {
                personListMoreInfoVC.personList = personList
            }
        }
    }
}
