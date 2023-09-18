//
//  NewAddressCell.swift
//  Montak
//
//  Created by Blue Ray on 06/09/2023.
//

import UIKit

class NewAddressCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.layer.cornerRadius = 20

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
