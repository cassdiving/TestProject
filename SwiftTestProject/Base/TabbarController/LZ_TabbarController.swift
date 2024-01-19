//
//  LZ_TabbarController.swift
//  SwiftTestProject
//
//  Created by Luo HY on 17/01/2024.
//

import UIKit

class LZ_TabbarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // used KVC setup custom tabbar
        setValue(LZ_CustomTabbar(), forKeyPath: "tabBar")
        
        // setup tabbar background color
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .white
            tabBar.standardAppearance = appearance
            tabBar.scrollEdgeAppearance = tabBar.standardAppearance
            tabBar.tintColor = .darkGray
        }
        
        // initialize subcontrollers
        initializeSubcontrollers()
        
    }
    
    func initializeSubcontrollers () {
        // setup subControllers
        addSubcontroller(tabbarTitle: "Home", image: "home", selectedImage: "home_active", type: LZ_HomeViewController.self)
        addSubcontroller(tabbarTitle: "Moleskine", image: "moleskine", selectedImage: "moleskine_active", type: LZ_MoleskineViewController.self)
        addSubcontroller(tabbarTitle: "Setting", image: "setting", selectedImage: "setting_active", type: LZ_SettingViewController.self)
    }
    
    func addSubcontroller(tabbarTitle: String,
                          image: String,
                          selectedImage: String,
                          type: UIViewController.Type) {
        
        let currentViewcontroller = LZ_CustomNavigationController(rootViewController: type.init())
        currentViewcontroller.title = tabbarTitle
        currentViewcontroller.tabBarItem.image = UIImage(named: image)
        currentViewcontroller.tabBarItem.selectedImage = UIImage(named: selectedImage)
        currentViewcontroller.tabBarItem.setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor: UIColor.black
        ], for: .selected)
        addChild(currentViewcontroller)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
