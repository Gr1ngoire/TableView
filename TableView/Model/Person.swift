//
//  UserData.swift
//  TableView
//
//  Created by admin on 18.04.2021.
//

import Foundation

// structure for our model of user
struct Person {
    var name: String
    var surname: String
    var email: String
    var phoneNumber: String
}

extension Person {
    
    // adding a method for creating users
   static func getUsers() -> [Person] {
        
        // necessary data arrays (names, surnames, emails and phoneNumbers)
        let names = [
            "Jonathan",
            "Ezio",
            "Arno",
            "Altair",
            "Bayek",
            "Connor",
            "Edward",
            "Jacob",
            "Evie"
        ]
        
        let surnames = [
            "Dorian",
            "Kenway",
            "Auditore",
            "McGregor",
            "Young",
            "Freye",
            "Branthe",
            "Bertran",
            "Potter"
        ]
        
        let emails = [
            "sklm@gmail.com",
            "kfwj@gmail.com",
            "fhwe@gmail.com",
            "uyht@gmail.com",
            "irth@gmail.com",
            "bebv@gmail.com",
            "blnb@gmail.com",
            "reqw@gmail.com",
            "bejn@gmail.com"
        ]
        
        let phoneNumbers = [
            "88005553535",
            "58723908190",
            "18721317839",
            "57220843487",
            "14342312332",
            "94313343423",
            "43148711238",
            "75234871892",
            "57572472418"
        ]
        
        
        // creating random unique indexes for our random users
        var randomIndexes: [Int] = []
        while randomIndexes.count < names.count {
            let randomIndex = Int.random(in: 0...names.count-1)
            if randomIndexes.contains(randomIndex) {
                continue
            } else {
                randomIndexes.append(randomIndex)
            }
        }
    
        // creating models of a random users and their data
        var people: [Person] = []
        for index in randomIndexes {
            people.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    email: emails[index],
                    phoneNumber: phoneNumbers[index]
                )
            )
        }
        return people
    }
    
}
