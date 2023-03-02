//
//  mUI.swift
//  Bill Splitting
//
//  Created by Yevhenii Vladichuk on 26/02/2023.
//

import Foundation
import UIKit

class MainUI: UIView {
    
    let topImage: UIImageView = {
        let topImage = UIImageView()
        topImage.translatesAutoresizingMaskIntoConstraints = false
        return topImage
    }()
    
    let bottomBackground: UIView = {
        let bottomBackground = UIView()
        bottomBackground.backgroundColor = UIColor(red: 77/255, green: 72/255, blue: 172/255, alpha: 1)
        bottomBackground.layer.cornerRadius = 30
        bottomBackground.translatesAutoresizingMaskIntoConstraints = false
        return bottomBackground
    }()
    
    let mainButton: UIButton = {
        let mainButton = UIButton()
        mainButton.backgroundColor = UIColor(red: 263/255, green: 36/255, blue: 120/255, alpha: 1)
        mainButton.layer.cornerRadius = 30
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        return mainButton
    }()
    
    let inputField: UITextField = {
        let inputField = UITextField()
        inputField.backgroundColor = UIColor(red: 41/255, green: 39/255, blue: 120/255, alpha: 1)
        inputField.layer.cornerRadius = 35
        inputField.font = UIFont.systemFont(ofSize: 45)
        inputField.textAlignment = .right
        inputField.textColor = .white
        inputField.keyboardType = .decimalPad
        inputField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        inputField.rightViewMode = .always
        inputField.attributedPlaceholder = NSAttributedString(
            string: "0",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.75)]
        )
        inputField.translatesAutoresizingMaskIntoConstraints = false
        return inputField
    }()
    
    let selectView: UIView = {
        let selectView = UIView()
        selectView.backgroundColor = UIColor(red: 41/255, green: 39/255, blue: 120/255, alpha: 1)
        selectView.layer.cornerRadius = 30
        selectView.translatesAutoresizingMaskIntoConstraints = false
        return selectView
    }()
    
    let percentTitle: UILabel = {
        let percentTitle = UILabel()
        percentTitle.text = "Select tip"
        percentTitle.textColor = .white
        percentTitle.font = UIFont.systemFont(ofSize: 25)
        percentTitle.translatesAutoresizingMaskIntoConstraints = false
        return percentTitle
    }()
    
    let hStack1: UIStackView = {
        let hStak1 = UIStackView()
        hStak1.axis = .horizontal
        hStak1.distribution = .fillEqually
        hStak1.spacing = 15
        hStak1.translatesAutoresizingMaskIntoConstraints = false
        return hStak1
    }()
    
    let zeroButton: UIButton = {
        let zeroButton = UIButton()
        zeroButton.setTitle("0%", for: .normal)
        zeroButton.backgroundColor = UIColor(red: 62/255, green: 108/255, blue: 283/255, alpha: 1)
        zeroButton.layer.cornerRadius = 17
        zeroButton.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        return zeroButton
    }()
    
    let fiveButton: UIButton = {
        let fiveButton = UIButton()
        fiveButton.setTitle("5%", for: .normal)
        fiveButton.backgroundColor = UIColor(red: 62/255, green: 108/255, blue: 283/255, alpha: 1)
        fiveButton.layer.cornerRadius = 17
        fiveButton.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        return fiveButton
    }()
    
    let tenButton: UIButton = {
        let tenButton = UIButton()
        tenButton.setTitle("10%", for: .normal)
        tenButton.backgroundColor = UIColor(red: 62/255, green: 108/255, blue: 283/255, alpha: 1)
        tenButton.layer.cornerRadius = 17
        tenButton.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        return tenButton
    }()
    
    let fifteenButton: UIButton = {
        let fifteenButton = UIButton()
        fifteenButton.setTitle("15%", for: .normal)
        fifteenButton.backgroundColor = UIColor(red: 62/255, green: 108/255, blue: 283/255, alpha: 1)
        fifteenButton.layer.cornerRadius = 17
        fifteenButton.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        return fifteenButton
    }()
    
    let splitTitle: UILabel = {
        let splitTitle = UILabel()
        splitTitle.text = "Split for"
        splitTitle.textColor = .white
        splitTitle.font = UIFont.systemFont(ofSize: 25)
        splitTitle.translatesAutoresizingMaskIntoConstraints = false
        return splitTitle
    }()
    
    let hStack2: UIStackView = {
        let hStack2 = UIStackView()
        hStack2.axis = .horizontal
        hStack2.distribution = .fillEqually
        hStack2.spacing = 0
        hStack2.translatesAutoresizingMaskIntoConstraints = false
        return hStack2
    }()
    
    let personValueTitle: UILabel = {
        let personValueTitle = UILabel()
        personValueTitle.text = "2"
        personValueTitle.font = UIFont.systemFont(ofSize: 34)
        personValueTitle.textColor = .white
        personValueTitle.textAlignment = .center
        return personValueTitle
    }()
    
    let stepper: UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 2
        stepper.maximumValue = 20
        stepper.setDecrementImage(stepper.decrementImage(for: .normal), for: .normal)
        stepper.setIncrementImage(stepper.incrementImage(for: .normal), for: .normal)
        stepper.value = 0.0
        stepper.tintColor = .white
        return stepper
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addElements()
    }
    
    func addShadow(view: UIView) {
        view.layer.masksToBounds = false
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.40
        view.layer.shadowOffset = .zero
        view.layer.shadowColor = #colorLiteral(red: 0.09411764706, green: 0.09411764706, blue: 0.137254902, alpha: 1)
    }
    
    func addElements() {
        addSubview(topImage)
        addSubview(bottomBackground)
        
        bottomBackground.addSubview(mainButton)
        mainButton.setTitle("calculate", for: .normal)
        bottomBackground.addSubview(inputField)
        bottomBackground.addSubview(selectView)
        
        addShadow(view: topImage)
        topImage.image = UIImage(named: "mainBackground.pdf")
        addShadow(view: inputField)
        addShadow(view: selectView)
        addShadow(view: mainButton)
        
        selectView.addSubview(percentTitle)
        selectView.addSubview(hStack1)
        
        hStack1.addArrangedSubview(zeroButton)
        hStack1.addArrangedSubview(fiveButton)
        hStack1.addArrangedSubview(tenButton)
        hStack1.addArrangedSubview(fifteenButton)
        
        addShadow(view: zeroButton)
        addShadow(view: fiveButton)
        addShadow(view: tenButton)
        addShadow(view: fifteenButton)
        
        selectView.addSubview(splitTitle)
        selectView.addSubview(hStack2)
        
        hStack2.addArrangedSubview(personValueTitle)
        hStack2.addArrangedSubview(stepper)
        
        
        NSLayoutConstraint.activate([
            
            topImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            topImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            topImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3),
            topImage.widthAnchor.constraint(equalTo: topImage.heightAnchor, multiplier: 1.3/1),
            
            bottomBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
            bottomBackground.trailingAnchor.constraint(equalTo: trailingAnchor),
            bottomBackground.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 3/4),
            bottomBackground.topAnchor.constraint(equalTo: topImage.bottomAnchor, constant: 15),
            
            mainButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -5),
            mainButton.heightAnchor.constraint(equalToConstant: 60),
            mainButton.widthAnchor.constraint(equalTo: bottomBackground.widthAnchor, multiplier: 1/2),
            
            inputField.topAnchor.constraint(equalTo: bottomBackground.topAnchor, constant: 20),
            inputField.leadingAnchor.constraint(equalTo: bottomBackground.leadingAnchor, constant: 20),
            inputField.trailingAnchor.constraint(equalTo: bottomBackground.trailingAnchor, constant: -20),
            inputField.heightAnchor.constraint(equalToConstant: 70),
            
            selectView.topAnchor.constraint(equalTo: inputField.bottomAnchor, constant: 15),
            selectView.leadingAnchor.constraint(equalTo: bottomBackground.leadingAnchor, constant: 20),
            selectView.trailingAnchor.constraint(equalTo: bottomBackground.trailingAnchor, constant: -20),
            
            
            percentTitle.topAnchor.constraint(equalTo: selectView.topAnchor, constant: 20),
            percentTitle.leadingAnchor.constraint(equalTo: selectView.leadingAnchor, constant: 20),
            percentTitle.heightAnchor.constraint(equalToConstant: 30),
            
            hStack1.topAnchor.constraint(equalTo: percentTitle.bottomAnchor, constant: 10),
            hStack1.leadingAnchor.constraint(equalTo: selectView.leadingAnchor, constant: 20),
            hStack1.trailingAnchor.constraint(equalTo: selectView.trailingAnchor, constant: -20),
            
            zeroButton.heightAnchor.constraint(equalToConstant: 54),
            fiveButton.heightAnchor.constraint(equalToConstant: 54),
            tenButton.heightAnchor.constraint(equalToConstant: 54),
            fifteenButton.heightAnchor.constraint(equalToConstant: 54),
            
            splitTitle.topAnchor.constraint(equalTo: hStack1.bottomAnchor, constant: 20),
            splitTitle.leadingAnchor.constraint(equalTo: selectView.leadingAnchor, constant: 20),
            splitTitle.heightAnchor.constraint(equalToConstant: 30),
            
            hStack2.centerXAnchor.constraint(equalTo: selectView.centerXAnchor),
            hStack2.topAnchor.constraint(equalTo: splitTitle.bottomAnchor, constant: 10),
            hStack2.bottomAnchor.constraint(equalTo: selectView.bottomAnchor, constant: -20),
        ])
    }
}
