//
//  ViewController.swift
//  YesNo
//
//  Created by Otto Dzhandzhuliya on 03.03.2023.
//

import UIKit
import Gifu

class MainViewController: UIViewController {

    let mainView = MainVCView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTargets()
        self.view = mainView
    }
    
    func addTargets() {
        mainView.dismissButton.addTarget(self, action: #selector(dismiSs), for: .touchUpInside)
    }
    @objc func dismiSs() {
        self.dismiss(animated: true)
    }
    
}

