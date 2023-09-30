//
//  MenuVC.swift
//
//
//

import UIKit
import MOLH

class MenuVC: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        self.setupSideMenu()

    }
    

    var dismissComplition: (() -> Void)?
    var languageComplition: (() -> Void)?
    
    enum Actions: Int {
        case home = 0
        case search = 1
        case favorite = 2
        case notifications = 3
        case profile = 4
        case aboutUs = 5
        case privacyPolicy = 6
        case callCenter = 7
        case changeLang = 8
        case logout = 9
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.navigationBar.isHidden = true
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        self.navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func openMenu(sender:UIButton){
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

         if sender.tag == Actions.home.rawValue {
            
             let vc = storyBoard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
             
             self.navigationController?.pushViewController(vc, animated: false)
       

         }else if sender.tag == Actions.search.rawValue {
             
             let vc = storyBoard.instantiateViewController(withIdentifier: "SearchCategoryVC") as! SearchCategoryVC
             
             vc.flag = 0
             
             self.navigationController?.pushViewController(vc, animated: false)
       
             
         }
        
        else if sender.tag == Actions.favorite.rawValue {
            
            let vc = storyBoard.instantiateViewController(withIdentifier: "FavoriteVC") as! FavoriteVC
            
            self.navigationController?.pushViewController(vc, animated: false)
            
        }
        
        else if sender.tag == Actions.notifications.rawValue {
            
            let vc = storyBoard.instantiateViewController(withIdentifier: "NotificationVC") as! NotificationVC
            
            self.navigationController?.pushViewController(vc, animated: false)
            
        }
        
        else if sender.tag == Actions.profile.rawValue {
            
            let vc = storyBoard.instantiateViewController(withIdentifier: "MyProfileVC") as! MyProfileVC
            
            self.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true)
        }
        
        else if sender.tag == Actions.aboutUs.rawValue {
            
            let vc = storyBoard.instantiateViewController(withIdentifier: "AboutUsVC") as! AboutUsVC
            
            self.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true)
            
//            self.navigationController?.pushViewController(vc, animated: false)
            
        }
        
        else if sender.tag == Actions.privacyPolicy.rawValue {
            
            let vc = storyBoard.instantiateViewController(withIdentifier: "PrivacyPolicyVC") as! PrivacyPolicyVC
            
            self.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true)
            
//            self.navigationController?.pushViewController(vc, animated: false)
            
        }
        
        
        
        else if sender.tag == Actions.callCenter.rawValue {
            
            let vc = storyBoard.instantiateViewController(withIdentifier: "CallCenterVC") as! CallCenterVC
            
            self.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true)
            
//            self.navigationController?.pushViewController(vc, animated: false)
            
        }
        
        else if sender.tag == Actions.changeLang.rawValue {
            
            let vc = storyBoard.instantiateViewController(withIdentifier: "ChangeLang") as! ChangeLang
            
            self.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true)
            
//            self.navigationController?.pushViewController(vc, animated: false)
            
        }
        
        
        else if sender.tag == Actions.logout.rawValue {
            
            let vc = storyBoard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
            
            self.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true)
            
//            self.navigationController?.pushViewController(vc, animated: false)
            
        }
        
        
    }
              
        
        
        
        
        
        
        
        
    
        
    }
