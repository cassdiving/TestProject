//
//  LZ_BaseViewController.swift
//  SwiftTestProject
//
//  Created by Luo HY on 18/01/2024.
//

import UIKit

class LZ_BaseViewController: UIViewController {

    // hiden navigationBar flag
    var hidenNavigationBar = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resetNavigationBarFlag()
    }
    
    // reset navigationbar hiden flag
    func resetNavigationBarFlag() {
        navigationController?.navigationBar.isHidden = hidenNavigationBar
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
