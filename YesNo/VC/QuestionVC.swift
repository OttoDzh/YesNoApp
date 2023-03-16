//
//  QuestionVC.swift
//  YesNo
//
//  Created by Otto Dzhandzhuliya on 04.03.2023.
//

import UIKit

class QuestionVC: UIViewController {
    
    let questionView = QuestionVCView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = questionView
        addTargets()
    }
    
    func addTargets() {
        questionView.yesButton.addTarget(self, action: #selector(toTheMain), for: .touchUpInside)
        questionView.noButton.addTarget(self, action: #selector(toTheNoMain), for: .touchUpInside)
        questionView.randomButton.addTarget(self, action: #selector(randomMain), for: .touchUpInside)
    }
  
    @objc func randomMain() {
        NetWorkManager.getData(params: ApiMethod.random.rawValue){ yesno in
                DispatchQueue.main.async {
                    let vc = MainViewController()
                    vc.modalPresentationStyle = .fullScreen
                    let gifUrl = URL(string: yesno.image)
                    vc.mainView.imageGif.animate(withGIFURL: gifUrl!)
                    self.present(vc, animated: true)
                }
            }
 
    }
   
    @objc func toTheNoMain() {
        NetWorkManager.getData(params: ApiMethod.paramsNo.rawValue){ yesno in
                DispatchQueue.main.async {
                    let vc = MainViewController()
                    vc.modalPresentationStyle = .fullScreen
                    let gifUrl = URL(string: yesno.image)
                    vc.mainView.imageGif.animate(withGIFURL: gifUrl!)
                    self.present(vc, animated: true)
                }
            }
    }
    
    @objc func toTheMain() {
        NetWorkManager.getData(params: ApiMethod.paramsYes.rawValue){ yesno in
                DispatchQueue.main.async {
                    let vc = MainViewController()
                    vc.modalPresentationStyle = .fullScreen
                    let gifUrl = URL(string: yesno.image)
                    vc.mainView.imageGif.animate(withGIFURL: gifUrl!)
                    self.present(vc, animated: true)
                }
            }
    }
}
