//
//  LZ_CustomNavigationController.swift
//  SwiftTestProject
//
//  Created by Luo HY on 18/01/2024.
//

import UIKit

class LZ_CustomNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // override pushViewController method
    // before push, check target VC is FIRST or SECOND page by viewControllers.count
    // if count > 0 then is second page, add code hidesBottomBarWhenPushed = true
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    // override popViewController, reset navigation hiden flag when poped
    override func popViewController(animated: Bool) -> UIViewController? {
        super.popViewController(animated: animated)
        
        var vc: LZ_BaseViewController? 
        if viewControllers.count > 0 {
            vc = viewControllers.last as? LZ_BaseViewController
            vc?.resetNavigationBarFlag()
        }
        return vc
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
