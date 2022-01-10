//
//  SecondViewController.swift
//  MVVM_HW15
//
//  Created by Ольга on 06.01.2022.
//

import UIKit

class SecondViewController: UIViewController, Storyboardable {
    
    weak var coordinator: AppCoordinator?

    @IBAction func openStartPage(_ sender: Any) {
        coordinator?.start()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Demo Page"
    }
}
