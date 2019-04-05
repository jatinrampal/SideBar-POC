//
//  MenuController.swift
//  SideBarPOC
//
//  Created by Jatin Rampal on 2019-04-04.
//  Copyright © 2019 Jatin Rampal. All rights reserved.
//

import UIKit

class MenuController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(showHello), name: NSNotification.Name("showHello"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showBonjour), name: NSNotification.Name("showBonjour"), object: nil)
    }
    
    @objc func showHello(){
        performSegue(withIdentifier: "showHello", sender: nil)
    }
    
    @objc func showBonjour(){
        performSegue(withIdentifier: "showBonjour", sender: nil)
    }
    
    @IBAction func onTapped(){
        print("menu requested")
        NotificationCenter.default.post(name: NSNotification.Name("menuRequest"), object: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
