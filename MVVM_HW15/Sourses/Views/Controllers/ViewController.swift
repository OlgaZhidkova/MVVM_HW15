//
//  ViewController.swift
//  MVVM_HW15
//
//  Created by Ольга on 31.12.2021.
//

import UIKit

class ViewController: UIViewController, Storyboardable {
    
    var coordinator: AppCoordinator?
    var viewModel: ViewModel?
    
    @IBAction func openSecondVC(_ sender: Any) {
        coordinator?.openSecondVC()
    }
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel?.loginButtonPressed(login: (loginField.text ?? ""),
                                     password: (passField.text ?? ""))
        
        if viewModel?.isLoggedIn == true {
            coordinator?.openThirdVC()
        }

        loginField.text = ""
        passField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        bindViewModel()
    }
    
    func bindViewModel() {
        viewModel?.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.statusLabel.text = statusText
            }
        })
    }
}

