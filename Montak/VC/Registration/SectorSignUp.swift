//
//  SectorSignUp.swift
//  Montak
//
//  Created by Blue Ray on 28/09/2023.
//

import UIKit
import MOLH

class SectorSignUp: UIViewController {
    
    @IBOutlet weak var backBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = MOLHLanguage.isRTLLanguage() ? UIImage(named: "backAr") : UIImage(named: "back1")
        
        backBtn.setImage(image, for: .normal)


    }
    
    @IBAction func nextPressed(_ sender: Any) {
        
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "OTPVC") as! OTPVC
        
        
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
    
    
    @IBAction func previousPressed(_ sender: Any) {
        
        self.dismiss(animated: true)
        
    }
    
    
    
    
}
