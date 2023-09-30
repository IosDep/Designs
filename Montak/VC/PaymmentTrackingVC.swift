//
//  PaymmentTrackingVC.swift
//  Montak
//
//  Created by Blue Ray on 11/09/2023.
//

import UIKit
import MOLH

class PaymmentTrackingVC: UIViewController {
    
    @IBOutlet weak var onlinePaymentCheck: UIImageView!
    @IBOutlet weak var visaCheck: UIImageView!
    @IBOutlet weak var deliveryCheck: UIImageView!
    
    @IBOutlet weak var backBtn: UIButton!
    
    var paymentFlag: Int = 0
    
    var cashFlag : Bool?
    var visaFlag : Bool?
    var onlinePaymentFlag : Bool?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = MOLHLanguage.isRTLLanguage() ? UIImage(named: "backAr") : UIImage(named: "back1")
        
        backBtn.setImage(image, for: .normal)

        
    }
    
    
    @IBAction func addToCartPressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SearchCategoryVC") as! SearchCategoryVC
        self.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    
    
    // payment flag 1

    @IBAction func cashPressed(_ sender: Any) {
        
        if cashFlag == true {
            deliveryCheck.isHidden = true
            cashFlag = false
            paymentFlag = 0 // unselect the method
            
        }
        
        else if cashFlag == false {
            deliveryCheck.isHidden = false
            cashFlag = true
            paymentFlag = 1

        }
        
    }
    
    
    // payment flag 2

    
    @IBAction func visaPressed(_ sender: Any) {
        
        if paymentFlag == 2 {
            visaCheck.isHidden = true
            paymentFlag = 0
        }
        
        else if paymentFlag == 0 {
            visaCheck.isHidden = false
            paymentFlag = 2

        }
        
        
    }
    
    // payment flag 3

   
    @IBAction func onlinePaymentPressed(_ sender: Any) {
        
        if paymentFlag == 3 {
            onlinePaymentCheck.isHidden = true
            paymentFlag = 0
        }
        
        else if paymentFlag == 0 {
            onlinePaymentCheck.isHidden = false
            paymentFlag = 3

        }
        
        
    }
    
    
    
    @IBAction func selectMethodAction(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            if cashFlag == true {
                deliveryCheck.isHidden = true
                cashFlag = false
            }
            else {
                deliveryCheck.isHidden = false
                cashFlag = true
            }
            print("cash")
        case 2:
            if visaFlag == true {
                visaCheck.isHidden = true
                visaFlag = false
            }
            else {
                visaCheck.isHidden = false
                visaFlag = true
            }
            print("visa")
        case 3:
            if onlinePaymentFlag == true {
                onlinePaymentCheck.isHidden = true
                onlinePaymentFlag = false
            }
            else {
                onlinePaymentCheck.isHidden = false
                onlinePaymentFlag = true
            }
            print("cash")
            
        default:
            print("default")
        }
        
        
    }
    
    
}
