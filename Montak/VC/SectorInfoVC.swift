//
//  SectorInfoVC.swift
//  Montak
//
//  Created by Blue Ray on 10/09/2023.


import UIKit

class SectorInfoVC: UIViewController {
    @IBOutlet weak var mainTitle: DesignableLabel!
    
    var flag : Int?
    
    
    @IBOutlet weak var previousBtn: DesignableButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if flag == 1 {
            mainTitle.text = "My Profile".localized()
            previousBtn.isHidden = true
        }
        
    }

}
