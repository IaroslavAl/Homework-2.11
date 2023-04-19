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
    
    static let dataStore = DataStore()
    
    static func getPersons() -> [Person]{
        var firstNames = dataStore.firstNames.shuffled()
        var lastNames = dataStore.lastNames.shuffled()
        var phoneNumbers = dataStore.phoneNumbers.shuffled()
        var emails = dataStore.emails.shuffled()
        
        var persons = [Person]()
        
        while !firstNames.isEmpty,
              !lastNames.isEmpty,
              !phoneNumbers.isEmpty,
              !emails.isEmpty {
            
            let newPerson = Person(
                firstName: firstNames.removeLast(),
                lastName: lastNames.removeLast(),
                phoneNumber: phoneNumbers.removeLast(),
                email: emails.removeLast()
            )
            
            persons.append(newPerson)
        }
        
        return persons
    }
}
