//
//  LoginVC.swift
//  Montak
//
//  Created by Blue Ray on 28/09/2023.
//

import UIKit

class LoginVC: UIViewController {
    
    
    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func continuePressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "CustomeTabBarVC")

                    self.navigationController?.pushViewController(vc, animated: false)

       
        
    }
    
    
    @IBAction func createAccountPressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        
        
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
        
    }
    
    
    @IBAction func signUpPressed(_ sender: Any) {
        
        
        
    }
    
    
    
    
    
    @IBAction func callCenterPressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "CallCenterVC") as! CallCenterVC
        
        
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
        
    }
}
