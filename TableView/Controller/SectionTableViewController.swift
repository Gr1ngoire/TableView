//
//  SectionTableViewController.swift
//  TableView
//
//  Created by admin on 20.04.2021.
//

import UIKit

class SectionTableViewController: UITableViewController {

    
    private let users = Person.getUsers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(users)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return users.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(users[section].name) \(users[section].surname)"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    // overriding cells' filling (emails and phones)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "startCell", for: indexPath)
        cell.textLabel?.text = users[indexPath.row].email
        if indexPath.row == 1 {
            cell.textLabel?.text = users[indexPath.row].phoneNumber
        }
        return cell
    }
    

}
