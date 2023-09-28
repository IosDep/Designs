//
//  ChangeLang.swift
//  Montak
//
//  Created by Blue Ray on 24/09/2023.
//

import UIKit
import MOLH

class ChangeLang: UIViewController {
    
    @IBOutlet weak var backBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = MOLHLanguage.isRTLLanguage() ? UIImage(named: "backAr") : UIImage(named: "back1")
        
        backBtn.setImage(image, for: .normal)

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
