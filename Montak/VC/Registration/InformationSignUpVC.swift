//
//  InformationSignUpVC.swift
//  Montak
//
//  Created by Blue Ray on 28/09/2023.
//

import UIKit
import MOLH

class InformationSignUpVC: UIViewController {

   
    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = MOLHLanguage.isRTLLanguage() ? UIImage(named: "backAr") : UIImage(named: "back1")
        
        backBtn.setImage(image, for: .normal)


    }
    

    @IBAction func nextPressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "AddressSignUp") as! AddressSignUp
        
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
    
    
    
    @IBAction func previousPressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
        
        
    }
    
}
