//
//  CustomeTabBarVC.swift
//  Montak
//
//  Created by Blue Ray on 24/09/2023.
//

import UIKit

class CustomeTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        if #available(iOS 15, *) {
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.backgroundColor = .white
            tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.black]
            tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.lightGray]
            tabBar.standardAppearance = tabBarAppearance
            tabBar.scrollEdgeAppearance = tabBarAppearance
            
        } else {
            UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
            UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor.lightGray], for: .normal)
            tabBar.barTintColor = .white
        }
        

    }
    
}



// Conform to UITabBarControllerDelegate


extension CustomeTabBarVC: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if let selectedIndex = tabBarController.viewControllers?.firstIndex(of: viewController), selectedIndex == 2 {
            // The third tab (index 2) is selected, present your desired view controller as a popup
            let modalViewController = OrdersVC() // Replace this with the view controller you want to present
            modalViewController.modalPresentationStyle = .overCurrentContext
            modalViewController.view.backgroundColor = UIColor.clear
            
            // Customize the size and presentation of the popup view controller
            modalViewController.preferredContentSize = CGSize(width: 300, height: 200) // Adjust the size as needed
            
            self.present(modalViewController, animated: true, completion: nil)
        }
    }
}
