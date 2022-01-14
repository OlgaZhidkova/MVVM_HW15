//
//  ThirdViewController.swift
//  MVVM_HW15
//
//  Created by Ольга on 06.01.2022.
//

import UIKit

class ThirdViewController: UIViewController, Storyboardable {
    
    weak var coordinator: AppCoordinator?

    @IBAction func backToStartPage(_ sender: Any) {
        coordinator?.start()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Welcome"
    }
}
