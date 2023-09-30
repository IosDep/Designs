//
//  AddressSignUp.swift
//  Montak
//
//  Created by Blue Ray on 28/09/2023.
//

import UIKit
import MOLH

class AddressSignUp: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = MOLHLanguage.isRTLLanguage() ? UIImage(named: "backAr") : UIImage(named: "back1")
        
        backBtn.setImage(image, for: .normal)


    }
    
    
    @IBAction func googleMapsPressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "GoogleMapsVC") as! GoogleMapsVC
        
        
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
        
    }
    
    @IBAction func sendPressed(_ sender: Any) {
        
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "SectorSignUp") as! SectorSignUp
        
        
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
    
    
    
    @IBAction func previousPressed(_ sender: Any) {
        
        
        self.dismiss(animated: true)
    }
    
}
