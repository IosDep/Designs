//
//  ChangeLang.swift
//  Montak
//
//  Created by Blue Ray on 24/09/2023.
//

import UIKit
import MOLH

class ChangeLang: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func Ar(_ sender: Any) {
        
        MOLH.setLanguageTo("ar")
        MOLH.reset()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.reset()
    }
    
    @IBAction func En(_ sender: Any) {
        
        MOLH.setLanguageTo("en")
        MOLH.reset()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.reset()
        
        
    }
}
