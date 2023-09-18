//
//  thirdHomePageCell.swift
//  Montak
//
//  Created by Blue Ray on 05/09/2023.
//

import UIKit

class thirdHomePageCell: UICollectionViewCell {

    @IBOutlet weak var mainView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.mainView.layer.cornerRadius = 15

    }
    

}
