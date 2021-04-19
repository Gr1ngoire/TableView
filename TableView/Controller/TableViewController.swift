//
//  TableViewController.swift
//  TableView
//
//  Created by admin on 18.04.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    private let users = Person.getUsers()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonData", for: indexPath)
        cell.textLabel?.text = "\(users[indexPath.row].name) \(users[indexPath.row].surname)"
        return cell
    }
    
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
