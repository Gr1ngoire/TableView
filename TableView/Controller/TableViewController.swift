//
//  TableViewController.swift
//  TableView
//
//  Created by admin on 18.04.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    // getting the array with users from Person structure(from extension for this structure)
    private let users = Person.getUsers()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    // quantity of rows in section( as much as our users array includes )
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    
    // adding parameters for our table cells (outputing users' names and surnames)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personData", for: indexPath)
        cell.textLabel?.text = "\(users[indexPath.row].name) \(users[indexPath.row].surname)"
        cell.textLabel?.font = UIFont(name: "Corleone", size: 30.0)
        return cell
    }
    
    
    // passing the info with users' names, surnames, emails and phoneNumbers to the next user info screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let dataSegue = segue.destination as! UserViewController
            dataSegue.nameData = users[indexPath.row].name
            dataSegue.surnameData = users[indexPath.row].surname
            dataSegue.emailData = users[indexPath.row].email
            dataSegue.numberData = users[indexPath.row].phoneNumber
        }
        
    }
    
}
