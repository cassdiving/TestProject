//
//  LZ_CostomTabbar.swift
//  SwiftTestProject
//
//  Created by Luo HY on 18/01/2024.
//

import UIKit

class LZ_CustomTabbar: UITabBar {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        // filter all the tabbar button
        for button in subviews where button is UIControl {
            // set tabbar button layout
            var frame = button.frame
            frame.origin.y = 5
            button.frame = frame
        }
    }

}
