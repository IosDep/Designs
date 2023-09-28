//
//  AddNewAddress.swift
//  Montak
//
//  Created by Blue Ray on 10/09/2023.
//

import UIKit
import MOLH

class AddNewAddress: UIViewController {
    
    @IBOutlet weak var backBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = MOLHLanguage.isRTLLanguage() ? UIImage(named: "backAr") : UIImage(named: "back1")
        
        backBtn.setImage(image, for: .normal)

    }
    

    
}
