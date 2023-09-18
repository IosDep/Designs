//
//  OrderTrackingVC.swift
//  Montak
//
//  Created by Blue Ray on 11/09/2023.
//

import UIKit
import StepIndicator

class OrderTrackingVC: UIViewController {

    @IBOutlet weak var stepIndicatorView: StepIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureIndicator()

    }
    
    func configureIndicator() {
        self.stepIndicatorView.numberOfSteps = 5
        self.stepIndicatorView.currentStep = 4
        stepIndicatorView.circleColor = UIColor(named: "MainColor") ?? .green
        stepIndicatorView.circleTintColor = UIColor(named: "MainColor") ?? .green
        stepIndicatorView.displayNumbers = false
        
    }
    

}
