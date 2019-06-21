//
//  ViewController.swift
//  HamburguerMenu
//
//  Created by Infraestructura on 6/21/19.
//  Copyright © 2019 Dan Ros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var menuOpen = false
    
    @IBOutlet weak var leftConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var rightConstraint: NSLayoutConstraint!
    
    
    @IBAction func btnMenuOptionTouch(_ sender: UIButton) {
        
        closeMenu()
        let tag = sender.tag
        let segue = "opcion\(tag)"
    performSegue(withIdentifier: segue, sender: sender)
    }
    
    @IBAction func btnMenuTouch(_ sender: Any) {
        
        if menuOpen{
            closeMenu()
        }else{
            openMenu()
        }
        UIView.animate(withDuration: 0.5){
            self.view.layoutIfNeeded()
        }
    }
    
    func openMenu(){
       
        leftConstraint.constant = 200.0
        rightConstraint.constant += 200.0
        menuOpen = true

        }
    func closeMenu(){
        leftConstraint.constant = 0
        rightConstraint.constant = 0
        menuOpen = false
        }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

