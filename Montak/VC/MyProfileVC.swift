//
//  MyProfileVC.swift
//  Montak
//
//  Created by Blue Ray on 10/09/2023.
//

import UIKit
import MOLH

class MyProfileVC: UIViewController {
    
    @IBOutlet weak var backBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = MOLHLanguage.isRTLLanguage() ? UIImage(named: "backAr") : UIImage(named: "back1")
        
        backBtn.setImage(image, for: .normal)

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
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
             let vc = storyBoard.instantiateViewController(withIdentifier: "SectorInfoVC") as! SectorInfoVC
        vc.flag = 1
             vc.modalPresentationStyle = .fullScreen
             self.present(vc, animated: true)


    }
    
    
    @IBAction func addressPressed(_ sender: Any) {

        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
             let vc = storyBoard.instantiateViewController(withIdentifier: "AddressInfoVC") as! AddressInfoVC
             vc.modalPresentationStyle = .fullScreen
             self.present(vc, animated: true)
    }
}
