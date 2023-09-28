//
//  ItemsCell.swift
//  Montak
//
//  Created by Blue Ray on 06/09/2023.
//

import UIKit

class ItemsCell: UITableViewCell {

    @IBOutlet weak var counterView: UIView!
    @IBOutlet weak var addTocartView: UIView!
    @IBOutlet weak var deleteBtn: UIButton!
    @IBOutlet weak var heartBtn: UIButton!
    @IBOutlet weak var mainView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainView.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        

    }
    
}
