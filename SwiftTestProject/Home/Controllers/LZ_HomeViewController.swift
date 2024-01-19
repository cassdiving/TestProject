//
//  LZ_HomeViewController.swift
//  SwiftTestProject
//
//  Created by Luo HY on 17/01/2024.
//

import UIKit

class LZ_HomeViewController: LZ_BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    // setup UI
    func setupUI() {
        view.backgroundColor = .cyan
        hidenNavigationBar = true
        
        // setup button
        let button = UIButton(type: .custom)
        button.setTitle("Push", for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 40)
        button.center = view.center
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    // button Action
    @objc func buttonAction() {
        let setting = LZ_SecondViewController()
        self.navigationController?.pushViewController(setting, animated: true)
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
