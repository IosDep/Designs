//
//  OTPVC.swift
//  Montak
//
//  Created by Blue Ray on 12/09/2023.
//

import UIKit
import  DPOTPView

class OTPVC: UIViewController {

    @IBOutlet weak var otpTextField: DPOTPView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureOTPView()
        
        

    }
    
    
    
    func configureOTPView() {
        otpTextField.count = 4
        otpTextField.spacing = 15
        otpTextField.fontTextField = UIFont(name: "HelveticaNeue-Bold", size: CGFloat(25.0))!
        otpTextField.selectedBorderColorTextField = UIColor(named: "MainColor") ?? .green
        otpTextField.shadowColorTextField = .lightGray
        otpTextField.shadowOpacityTextField = 2
        otpTextField.shadowOffsetSizeTextField = CGSize(width: 2, height: 2)
        
//        otpTextField.borderWidthTextField = 1
        otpTextField.backGroundColorTextField = .systemGray6
        otpTextField.cornerRadiusTextField = 30
        

    }

   

}
