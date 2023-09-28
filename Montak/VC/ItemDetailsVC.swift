//
//  ItemDetailsVC.swift
//  Montak
//
//  Created by Blue Ray on 10/09/2023.
//

import UIKit
import MOLH

class ItemDetailsVC: UIViewController {

   
    @IBOutlet weak var secondryView: UIView!
    @IBOutlet weak var itemDescription: UILabel!
    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    
    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondryView.layer.cornerRadius = 20
        
        let image = MOLHLanguage.isRTLLanguage() ? UIImage(named: "backAr") : UIImage(named: "back1")
        
        backBtn.setImage(image, for: .normal)

    }
    
    
    


}
