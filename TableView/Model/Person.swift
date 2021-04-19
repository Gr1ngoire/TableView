//
//  UserData.swift
//  TableView
//
//  Created by admin on 18.04.2021.
//

import Foundation


struct Person {
    var name: String
    var surname: String
    var email: String
    var phoneNumber: String
}

extension Person {
   static func getUsers() -> [Person] {
        
        
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
        
        
        var people: [Person] = []
        for _ in 0...names.count-1 {
            people.append(
                Person(
                    name: names[Int.random(in: 0...names.count-1)],
                    surname: surnames[Int.random(in: 0...surnames.count-1)],
                    email: emails[Int.random(in: 0...emails.count-1)],
                    phoneNumber: phoneNumbers[Int.random(in: 0...phoneNumbers.count-1)]
                )
            )
        }
        return people
    }
    
}
