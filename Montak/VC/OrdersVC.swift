//
//  OrdersVC.swift
//  Montak
//
//  Created by Blue Ray on 24/09/2023.
//

import UIKit

class OrdersVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func previousOrderPressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "CurrentOrdersVC") as! CurrentOrdersVC
        vc.flag = 1
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
    
    @IBAction func currentOrderPressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "CurrentOrdersVC") as! CurrentOrdersVC
        vc.flag = 2
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
        
    }
    
    @IBAction func cancelledOrderPressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "CurrentOrdersVC") as! CurrentOrdersVC
        vc.flag = 3
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
    
}
