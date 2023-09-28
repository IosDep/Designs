//
//  OrderTrackingVC.swift
//  Montak
//
//  Created by Blue Ray on 11/09/2023.
//

import UIKit
import StepIndicator
import MOLH

class OrderTrackingVC: UIViewController {

    @IBOutlet weak var stepIndicatorView: StepIndicatorView!
    
    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureIndicator()
        
        let image = MOLHLanguage.isRTLLanguage() ? UIImage(named: "backAr") : UIImage(named: "back1")
        
        backBtn.setImage(image, for: .normal)

    }
    
    func configureIndicator() {
        self.stepIndicatorView.numberOfSteps = 5
        self.stepIndicatorView.currentStep = 4
        stepIndicatorView.circleColor = UIColor(named: "MainColor") ?? .green
        stepIndicatorView.circleTintColor = UIColor(named: "MainColor") ?? .green
        stepIndicatorView.displayNumbers = false
        
    }
    

}
