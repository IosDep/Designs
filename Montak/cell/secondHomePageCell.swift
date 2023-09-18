//
//  secondHomePageCell.swift
//  Montak
//
//  Created by Blue Ray on 05/09/2023.
//

import UIKit

class secondHomePageCell: UICollectionViewCell {

    @IBOutlet weak var mainView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.mainView.layer.cornerRadius = 10
    }

}
