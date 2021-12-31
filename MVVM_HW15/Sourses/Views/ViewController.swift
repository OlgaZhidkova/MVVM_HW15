//
//  ViewController.swift
//  MVVM_HW15
//
//  Created by Ольга on 31.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel.loginButtonPressed(login: (loginField.text ?? ""), password: (passField.text ?? ""))
        loginField.text = ""
        passField.text = ""
    }
    
    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()

    }
    
    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.statusLabel.text = statusText
            }
        })
    }
}

