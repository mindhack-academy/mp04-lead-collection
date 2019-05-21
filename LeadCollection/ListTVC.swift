//
//  ListTVC.swift
//  LeadCollection
//
//  Created by Trainer on 14/05/2019.
//  Copyright © 2019 Trainer. All rights reserved.
//

import Foundation
import UIKit

class ListTVC: UITableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StorageManager.shared.getData().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")!
        
        let formData = StorageManager.shared.getData()[indexPath.row]
        
//        cell.textLabel?.text = "Section \(indexPath.section) \(indexPath.row)"
        
        cell.textLabel?.text = formData.user!.firstName! + " " + formData.user!.lastName!
        
        return cell
    }
}
