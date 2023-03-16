//
//  MainVCView.swift
//  YesNo
//
//  Created by Otto Dzhandzhuliya on 03.03.2023.
//

import UIKit
import Gifu




class MainVCView: UIView {
    
    let imageGif = GIFImageView()
    let dismissButton = UIButton(title: " BACK ", bgColor: .black, textColor: .white, font: ODFonts.titleLabelFont, cornerRadius: 0)

    init() {
        super.init(frame: CGRect())
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        backgroundColor = .black
        imageGif.contentMode = .scaleAspectFill
    }
    
    func setupConstraints() {
        addSubview(imageGif)
        addSubview(dismissButton)
      
        Helper.tamicOff(views: [imageGif,dismissButton])
        
        NSLayoutConstraint.activate([imageGif.topAnchor.constraint(equalTo: topAnchor, constant: 200),
                                     imageGif.leadingAnchor.constraint(equalTo: leadingAnchor),
                                     imageGif.trailingAnchor.constraint(equalTo: trailingAnchor),
                                     imageGif.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -200),
                                     dismissButton.topAnchor.constraint(equalTo: topAnchor, constant: 36),
                                     dismissButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 36)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
