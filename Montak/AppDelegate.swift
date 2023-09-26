//
//  AppDelegate.swift
//  Montak
//
//  Created by Blue Ray on 03/09/2023.
//

import UIKit
import MOLH

@main
class AppDelegate: UIResponder, UIApplicationDelegate , MOLHResetable{


    var window: UIWindow?
    
    func reset() {
        
            let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let vc = storyBoard.instantiateViewController(withIdentifier: "HomeVC")
            self.window?.rootViewController = vc
        
       
        
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        MOLHLanguage.setDefaultLanguage("ar")
        MOLH.shared.activate(false)
        
//        let customTabBarController = CustomTabBarController()
//        self.window?.rootViewController = customTabBarController

        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

   

    

}

