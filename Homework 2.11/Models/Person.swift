//
//  Person.swift
//  Homework 2.11
//
//  Created by Iaroslav Beldin on 19.04.2023.
//

struct Person {
    
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    var rows: [String] {
        [phoneNumber, email]
    }
    
    static func getPersons() -> [Person]{
        
        var persons: [Person] = []
        
        let firstNames = DataStore.shared.firstNames.shuffled()
        let lastNames = DataStore.shared.lastNames.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        
        let iterationCount = min(
            firstNames.count,
            lastNames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
