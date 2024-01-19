//
//  LZ_SettingViewController.swift
//  SwiftTestProject
//
//  Created by Luo HY on 17/01/2024.
//

import UIKit

class LZ_SettingViewController: LZ_BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
    }
    
    // setup UI
    func setupUI() {
        view.backgroundColor = .yellow
        hidenNavigationBar = true
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
