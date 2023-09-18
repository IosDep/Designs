//
//  AboutUsCell.swift
//  Montak
//
//  Created by Blue Ray on 06/09/2023.
//

import UIKit

class AboutUsCell: UITableViewCell {
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var bodyText: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        mainView.layer.cornerRadius = 20

    }
    
}
