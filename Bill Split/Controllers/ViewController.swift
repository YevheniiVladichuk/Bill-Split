//
//  ViewController.swift
//  Bill Splitting
//
//  Created by Yevhenii Vladichuk on 24/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    let mainUI = MainUI()
    var calculator = Calculator()
    
    override func loadView() {
        super.loadView()
        view = mainUI
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        mainUI.mainButton.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
        mainUI.zeroButton.addTarget(self, action: #selector(percentButtonTapped), for: .touchUpInside)
        mainUI.fiveButton.addTarget(self, action: #selector(percentButtonTapped), for: .touchUpInside)
        mainUI.tenButton.addTarget(self, action: #selector(percentButtonTapped), for: .touchUpInside)
        mainUI.fifteenButton.addTarget(self, action: #selector(percentButtonTapped), for: .touchUpInside)
        
        mainUI.stepper.addTarget(self, action: #selector(stepperTapped), for: .valueChanged)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    @objc func percentButtonTapped(_ sender: UIButton) {
        view.endEditing(true)
        
        mainUI.zeroButton.isSelected = false
        mainUI.fiveButton.isSelected = false
        mainUI.tenButton.isSelected = false
        mainUI.fifteenButton.isSelected = false
        
        mainUI.zeroButton.backgroundColor = UIColor(red: 62/255, green: 108/255, blue: 283/255, alpha: 1)
        mainUI.fiveButton.backgroundColor = UIColor(red: 62/255, green: 108/255, blue: 283/255, alpha: 1)
        mainUI.tenButton.backgroundColor = UIColor(red: 62/255, green: 108/255, blue: 283/255, alpha: 1)
        mainUI.fifteenButton.backgroundColor = UIColor(red: 62/255, green: 108/255, blue: 283/255, alpha: 1)
        
        sender.isSelected = true
        sender.backgroundColor = .darkGray
        let currentPercent = sender.currentTitle!.dropLast(1)
        calculator.tipPercent = Double(currentPercent)
    }
    
    @objc func stepperTapped(_ sender: UIStepper) {
        mainUI.personValueTitle.text = String(format: "%.0f", mainUI.stepper.value)
    }
    
    @objc func calculate(_ sender: UIButton) {
        calculator.totalBill = Double(mainUI.inputField.text ?? mainUI.inputField.placeholder!)
        calculator.numberOfPerson = Int(mainUI.stepper.value)
        
        let resultView = ResultViewController()
        resultView.resultValue = calculator.getSum()
        resultView.modalPresentationStyle = .fullScreen
        present(resultView, animated: true, completion: nil)
    }
    
    func updateUI(){
        view = mainUI
    }
}

