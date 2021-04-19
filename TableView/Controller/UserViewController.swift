//
//  UserViewController.swift
//  TableView
//
//  Created by admin on 19.04.2021.
//

import UIKit

class UserViewController: UIViewController {

    
    // adding necessary outputs(labels)
    @IBOutlet weak var labelNameData: UILabel!
    @IBOutlet weak var labelEmailData: UILabel!
    @IBOutlet weak var labelNumberData: UILabel!
    
    // adding necessary data storages
    var nameData: String!
    var surnameData: String!
    var emailData: String!
    var numberData: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelNameData.text = "\(nameData!) \(surnameData!)"
        labelEmailData.text = emailData!
        labelNumberData.text = numberData!
        
    }
    


}
