//
//  ViewController.swift
//  SideBarPOC
//
//  Created by Jatin Rampal on 2019-04-04.
//  Copyright © 2019 Jatin Rampal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(requestMenu), name: NSNotification.Name("menuRequest"), object: nil)
    }
    
    
    
    @IBOutlet weak var sideMenu: NSLayoutConstraint!
    var sideMenuOpen = false
    
    @objc func requestMenu(){
        if sideMenuOpen {
            sideMenuOpen = false
            sideMenu.constant = -240
        }
        else{
            sideMenuOpen = true
            sideMenu.constant = 0
        }
        
        UIView.animate(withDuration: 0.3){
                       self.view.layoutIfNeeded()
    }


}

}
