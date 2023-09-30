//
//  SignUpVC.swift
//  Montak
//
//  Created by Blue Ray on 28/09/2023.
//

import UIKit
import MOLH

class SignUpVC: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let image = MOLHLanguage.isRTLLanguage() ? UIImage(named: "backAr") : UIImage(named: "back1")
        
        backBtn.setImage(image, for: .normal)
        
    }
    

    @IBAction func continuePressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "InformationSignUpVC") as! InformationSignUpVC
        
        
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
        
        
    }
    
    
    @IBAction func loginPressed(_ sender: Any) {
        
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        
        
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
    
    
    @IBAction func technicalSupportPressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "CallCenterVC") as! CallCenterVC
        
        
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
        
        
    }
    

}
