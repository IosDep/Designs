//
//  customeTabBar.swift
//  Montak
//
//  Created by Blue Ray on 04/09/2023.
//

import UIKit

class customeTabBar: UIViewController {

   

}


class ProminentTabBar: UITabBar {
    var prominentButtonCallback: (()->())?
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        guard let items = items, items.count>0 else {
            return super.hitTest(point, with: event)
        }
        
        let middleItem = items[items.count/2]
        let middleExtra = middleItem.imageInsets.top
        let middleWidth = bounds.width/CGFloat(items.count)
        let middleRect = CGRect(x: (bounds.width-middleWidth)/2, y: middleExtra, width: middleWidth, height: abs(middleExtra))
        if middleRect.contains(point) {
            prominentButtonCallback?()
            return nil
        }
        return super.hitTest(point, with: event)
    }
}
