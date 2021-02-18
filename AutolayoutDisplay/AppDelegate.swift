//
//  AppDelegate.swift
//  AutolayoutDisplay
//
//  Created by Page Kallop on 2/16/21.
//

import UIKit

//@main
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        
        let layout = UICollectionViewFlowLayout()
        let swipingController = SwipeController(collectionViewLayout: layout)
        
        self.window? = UIWindow()
        self.window?.makeKeyAndVisible()
        self.window?.rootViewController = swipingController
        
        return true
    }

    // MARK: UISceneSession Lifecycle

//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//     
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//
//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//     
//    }


}

