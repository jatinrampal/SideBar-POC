//
//  SideBarTableViewController.swift
//  SideBarPOC
//
//  Created by Jatin Rampal on 2019-04-04.
//  Copyright © 2019 Jatin Rampal. All rights reserved.
//

import UIKit

class SideBarTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.backgroundColor = UIColor.clear

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        NotificationCenter.default.post(name: NSNotification.Name("menuRequest"), object: nil)
        
        switch indexPath.row {
        case 0:
            NotificationCenter.default.post(name: NSNotification.Name("showHello"), object: nil)
        case 1:
            NotificationCenter.default.post(name: NSNotification.Name("showBonjour"), object: nil)
        default:
            break
        }
    }

    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
    }
}
