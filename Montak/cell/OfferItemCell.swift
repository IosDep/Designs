//
//  OfferItemCell.swift
//  Montak
//
//  Created by Blue Ray on 07/09/2023.
//

import UIKit

class OfferItemCell: UITableViewCell {

    @IBOutlet weak var expiryDate: UILabel!
    @IBOutlet weak var priceBefore: UILabel!
    @IBOutlet weak var priceAfter: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
