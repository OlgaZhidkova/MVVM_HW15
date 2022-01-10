//
//  AppCoordinator.swift
//  MVVM_HW15
//
//  Created by Ольга on 06.01.2022.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.createObject()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func openSecondVC() {
        let vc = SecondViewController.createObject()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openThirdVC() {
        let vc = ThirdViewController.createObject()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}

