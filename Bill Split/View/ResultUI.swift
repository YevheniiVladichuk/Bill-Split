//
//  ResultView.swift
//  Bill Splitting
//
//  Created by Yevhenii Vladichuk on 28/02/2023.
//

import Foundation
import UIKit

class ResultUI: MainUI {
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "For one person 😎"
        titleLabel.font = UIFont.systemFont(ofSize: 36)
        titleLabel.textAlignment = .center
        titleLabel.textColor = .white
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    let valueLabel: UILabel = {
        let valueLabel = UILabel()
        valueLabel.text = "Value"
        valueLabel.font = UIFont.systemFont(ofSize: 42)
        valueLabel.textAlignment = .center
        valueLabel.textColor = .white
        valueLabel.numberOfLines = 0
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        return valueLabel
    }()
    
    override func addElements() {
        backgroundColor = UIColor(red: 60/255, green: 57/255, blue: 136/255, alpha: 1)
        
        addSubview(topImage)
        topImage.image = UIImage(named: "resultImage.pdf")
       
        
        addSubview(bottomBackground)
        bottomBackground.backgroundColor = UIColor(red: 41/255, green: 39/255, blue: 120/255, alpha: 1)
        
        bottomBackground.addSubview(selectView)
        selectView.addSubview(titleLabel)
        selectView.addSubview(valueLabel)
        bottomBackground.addSubview(mainButton)
        
        mainButton.setTitle("back", for: .normal)
        
        addShadow(view: topImage)
        addShadow(view: selectView)
        
        NSLayoutConstraint.activate([
            
            topImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            topImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            topImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3),
            topImage.widthAnchor.constraint(equalTo: topImage.heightAnchor, multiplier: 1.1/1),
            
            bottomBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
            bottomBackground.trailingAnchor.constraint(equalTo: trailingAnchor),
            bottomBackground.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 3/4),
            bottomBackground.topAnchor.constraint(equalTo: topImage.bottomAnchor, constant: 15),
            
            mainButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),
            mainButton.heightAnchor.constraint(equalToConstant: 60),
            mainButton.widthAnchor.constraint(equalTo: bottomBackground.widthAnchor, multiplier: 1/2),
            
            selectView.topAnchor.constraint(equalTo: bottomBackground.topAnchor, constant: 20),
            selectView.leadingAnchor.constraint(equalTo: bottomBackground.leadingAnchor, constant: 20),
            selectView.trailingAnchor.constraint(equalTo: bottomBackground.trailingAnchor, constant: -20),
            
            titleLabel.centerXAnchor.constraint(equalTo: selectView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: selectView.topAnchor, constant: 20),
            
            valueLabel.centerXAnchor.constraint(equalTo: selectView.centerXAnchor),
            valueLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 60),
            valueLabel.leadingAnchor.constraint(equalTo: selectView.leadingAnchor,  constant: 20),
            valueLabel.trailingAnchor.constraint(equalTo: selectView.leadingAnchor,  constant: -20),
        ])
    }
}
