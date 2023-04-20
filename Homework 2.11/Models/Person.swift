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
    
    static func getPersons() -> [Person]{
        let dataStore = DataStore()
        
        let firstNames = dataStore.firstNames.shuffled()
        let lastNames = dataStore.lastNames.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        let emails = dataStore.emails.shuffled()
        
        let minElements = [
            firstNames.count,
            lastNames.count,
            phoneNumbers.count,
            emails.count
        ].min() ?? 0
        
        var persons = [Person]()
        
        for element in 0..<minElements {
            let newPerson = Person(
                firstName: firstNames[element],
                lastName: lastNames[element],
                phoneNumber: phoneNumbers[element],
                email: emails[element]
            )
            
            persons.append(newPerson)
        }
        
        return persons
    }
}
