//
//  ItemDetailsVC.swift
//  Montak
//
//  Created by Blue Ray on 10/09/2023.
//

import UIKit

class ItemDetailsVC: UIViewController {

   
    @IBOutlet weak var secondryView: UIView!
    @IBOutlet weak var itemDescription: UILabel!
    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondryView.layer.cornerRadius = 20

    }
    
    
    


}
