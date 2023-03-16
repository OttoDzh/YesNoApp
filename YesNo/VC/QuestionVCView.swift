//
//  QuestionVCView.swift
//  YesNo
//
//  Created by Otto Dzhandzhuliya on 04.03.2023.
//

import UIKit

class QuestionVCView: UIView {
  
    let askLabel = UILabel(text: "ASK ME A GENERAL QUESTION", font: ODFonts.titleLabelFont)
    let yesButton = UIButton(title: "YES", bgColor: .green, textColor: .white, font: ODFonts.titleLabelFont, cornerRadius: 75)
    let noButton = UIButton(title: "NO", bgColor: .red, textColor: .white, font: ODFonts.titleLabelFont, cornerRadius: 75)
    let randomButton = UIButton(title: "RANDOM ANSWER", bgColor: .systemBlue, textColor: .white, font: ODFonts.regulatTextFont, cornerRadius: 100)

    init() {
        super.init(frame: CGRect())
        setupViews()
        setupConstraints()
    }
    
    func  setupViews() {
        backgroundColor = .black
        askLabel.textColor = .white
    }
  
    func setupConstraints() {
        let stack = UIStackView(arrangedSubviews: [yesButton,noButton], axis: .horizontal, spacing: 100)
        addSubview(askLabel)
        addSubview(stack)
        addSubview(randomButton)
        
        Helper.tamicOff(views: [askLabel,yesButton,noButton,stack,randomButton])
        
        NSLayoutConstraint.activate([askLabel.topAnchor.constraint(equalTo: topAnchor, constant: 200),
                                     askLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                                     stack.centerXAnchor.constraint(equalTo: centerXAnchor),
                                     stack.centerYAnchor.constraint(equalTo: centerYAnchor),
                                     yesButton.widthAnchor.constraint(equalToConstant: 150),
                                     yesButton.heightAnchor.constraint(equalToConstant: 150),
                                     noButton.widthAnchor.constraint(equalTo: yesButton.widthAnchor),
                                     noButton.heightAnchor.constraint(equalTo: yesButton.heightAnchor),
                                     randomButton.widthAnchor.constraint(equalToConstant: 200),
                                     randomButton.heightAnchor.constraint(equalToConstant: 200),
                                     randomButton.centerXAnchor.constraint(equalTo: centerXAnchor),
                                     randomButton.topAnchor.constraint(equalTo: stack.bottomAnchor, constant: 90)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
