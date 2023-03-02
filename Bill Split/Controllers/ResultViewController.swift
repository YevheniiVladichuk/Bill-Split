//
//  ResultViewController.swift
//  Bill Splitting
//
//  Created by Yevhenii Vladichuk on 28/02/2023.
//

import UIKit

class ResultViewController: UIViewController {

    let resultUI = ResultUI()
    var resultValue: String?
    
    override func loadView() {
        super.loadView()
        view = resultUI
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultUI.valueLabel.text = resultValue
        resultUI.mainButton.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
    }
    
    @objc func backTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }


}
