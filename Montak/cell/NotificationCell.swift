//
//  NotificationCell.swift
//  Montak
//
//  Created by Blue Ray on 07/09/2023.
//

import UIKit

class NotificationCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainView.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
