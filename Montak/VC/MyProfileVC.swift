//
//  MyProfileVC.swift
//  Montak
//
//  Created by Blue Ray on 10/09/2023.
//

import UIKit

class MyProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func changePhonePressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
             let vc = storyBoard.instantiateViewController(withIdentifier: "ChangeLanguageVC") as! ChangeLanguageVC
             vc.modalPresentationStyle = .fullScreen
             self.present(vc, animated: true)
    }
    
    
    @IBAction func personalInfoPressed(_ sender: Any) {
       
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
             let vc = storyBoard.instantiateViewController(withIdentifier: "PersonalInfoVC") as! PersonalInfoVC
             vc.modalPresentationStyle = .fullScreen
             self.present(vc, animated: true)
    }
    
    @IBAction func sectorPressed(_ sender: Any) {
        
        
    }
    
    
    @IBAction func addressPressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
             let vc = storyBoard.instantiateViewController(withIdentifier: "AddressInfoVC") as! AddressInfoVC
             vc.modalPresentationStyle = .fullScreen
             self.present(vc, animated: true)
    }
}
