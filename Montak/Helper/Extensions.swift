import UIKit
import MOLH
import SideMenu
import JGProgressHUD


extension UIViewController {
    
    @IBAction func dismiss(_ sender: Any) {self.dismiss(animated: true)}
    
    
    
    @IBAction func go_to_cart(_ sender: Any) {
        
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = storyBoard.instantiateViewController(withIdentifier: "CartVC") as! CartVC
//        self.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: true)
        
        self.navigationController?.pushViewController(vc, animated: true)

        
        
    }
    
    
    @IBAction func setupMenu(_ sender: Any) {self.side_menu()}

    
    
    
    func setupSideMenu() {
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let menuController = storyBoard.instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
  
        let MenuNavigationController = SideMenuNavigationController(rootViewController: menuController)
        SideMenuManager.default.rightMenuNavigationController = nil
        SideMenuManager.default.leftMenuNavigationController = nil
        
        if MOLHLanguage.isRTLLanguage() {

            
            SideMenuManager.default.rightMenuNavigationController = MenuNavigationController
            
            SideMenuManager.default.rightMenuNavigationController?.menuWidth = 280
        } else {
            SideMenuManager.default.leftMenuNavigationController = MenuNavigationController
            SideMenuManager.default.leftMenuNavigationController?.menuWidth = 280

        }
        
        
        
       

        
        
        
        
//        SideMenuManager.default.addPanGestureToPresent(toView: navigationController!.navigationBar)
//        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: navigationController!.navigationBar)
    }
    
    
    
    func side_menu() {
        
        self.setupSideMenu()
        if MOLHLanguage.isRTLLanguage() {
            present(SideMenuManager.default.rightMenuNavigationController!, animated: true, completion: nil)
        } else {
            present(SideMenuManager.default.leftMenuNavigationController!, animated: true, completion: nil)
        }
    }
    
    @objc
    func back_btn() {
        self.dismiss(animated: true)
    }
    
    
    
    
    
    
//    func setupSideMenu() {
//        
//            let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
//            let menuController = storyBoard.instantiateViewController(withIdentifier: "Menu") as! Menu
//
//        let MenuNavigationController = SideMenuNavigationController(rootViewController: menuController)
//        SideMenuManager.default.rightMenuNavigationController = nil
//        SideMenuManager.default.leftMenuNavigationController = nil
//        
//        if MOLHLanguage.isRTLLanguage() {
//            SideMenuManager.default.leftMenuNavigationController = MenuNavigationController
//            SideMenuManager.default.rightMenuNavigationController?.menuWidth = 300
//        } else {
//            SideMenuManager.default.rightMenuNavigationController = MenuNavigationController
//            SideMenuManager.default.rightMenuNavigationController?.menuWidth = 300
//        }
//
//        SideMenuManager.default.addPanGestureToPresent(toView: navigationController!.navigationBar)
//        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: navigationController!.navigationBar)
//        
//    }

    
    
    func navColorBlack(color: UIColor) {
        let color = UIColor(ciColor: .white)
//        self.navigationController?.navigationBar.tintColor = UIColor.white
//        self.navigationController?.navigationBar.barTintColor = UIColor.white
        
        if #available(iOS 15, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = color
            appearance.titleTextAttributes = [.font:
            UIFont.boldSystemFont(ofSize: 20.0),
                                          .foregroundColor: UIColor.darkGray]
            
            // Customizing our navigation bar
            navigationController?.navigationBar.tintColor = .darkGray
            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = appearance
            
        } else {
            navigationController?.navigationBar.tintColor = .darkGray
            //navigationController?.navigationBar.barTintColor = .white
           
            navigationController?.navigationBar.backgroundColor = color
            navigationController?.navigationBar.titleTextAttributes = [.font:
            UIFont.boldSystemFont(ofSize: 20.0),
                                          .foregroundColor: UIColor.darkGray]
        }
    }
  
    func showErrorHud(msg: String , hud: JGProgressHUD) {
        let hud = JGProgressHUD(style: .light)
        hud.textLabel.text = msg
        hud.indicatorView = JGProgressHUDErrorIndicatorView()
        hud.show(in: self.view)
        hud.dismiss(afterDelay: 1.5)
    }
    func showSuccessHud(msg: String , hud: JGProgressHUD) {
        let hud = JGProgressHUD(style: .light)
        hud.textLabel.text = msg
        hud.indicatorView = JGProgressHUDSuccessIndicatorView()
        hud.show(in: self.view)
        hud.dismiss(afterDelay: 1.5)
    }
    
    func serverError(hud: JGProgressHUD) {
        hud.indicatorView = JGProgressHUDErrorIndicatorView()
        hud.textLabel.text = "Server Error".localized()
        hud.dismiss(afterDelay: 1.5)
    }
    
}




extension UIView {
    
    func addBorders(borderWidth: CGFloat = 0.5, borderColor: CGColor ){
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor
    }
    
    func addShadowToView(shadowRadius: CGFloat = 2) {
        self.layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.layer.shadowOffset = CGSize(width: -1, height: 2)
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = 0.3
    }
 
    func roundCorner(corners: UIRectCorner, radius: CGFloat) {
            let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            layer.mask = mask
        }
func animateViewHeight (controller:UIViewController
                        ,height:CGFloat
                        ,heightConstraint:NSLayoutConstraint) {
        UIView.animate(withDuration: 0.5, animations: {
             heightConstraint.constant=height
            controller.view.layoutIfNeeded()
        })
    }

    
    @IBInspectable var bottomRounded: Bool {
        get {
            return layer.maskedCorners == [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        }
        set {
            if newValue {
                layer.cornerRadius = 16
                layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
            } else {
                layer.cornerRadius = 0
                layer.maskedCorners = []
            }
        }
    }

    
    
    

    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }

    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }

    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}

extension String {
    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: tableName, value: self, comment: "")
    }
}

@IBDesignable
extension UIView {
    @IBInspectable var shadowColor: UIColor? {
        set {
            layer.shadowColor = newValue?.cgColor
        }
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
    }

    @IBInspectable var shadowOpacity: Float {
        set {
            layer.shadowOpacity = newValue
        }
        get {
            return layer.shadowOpacity
        }
    }

    @IBInspectable var shadowOffset: CGSize {
        set {
            layer.shadowOffset = newValue
        }
        get {
            return layer.shadowOffset
        }
    }

    @IBInspectable var shadowRadius: CGFloat {
        set {
            layer.shadowRadius = newValue
        }
        get {
            return layer.shadowRadius
        }
    }
    
    
    
}



extension UICollectionViewFlowLayout {

    open override var flipsHorizontallyInOppositeLayoutDirection: Bool {
        return MOLHLanguage.isRTLLanguage()
    }

}

