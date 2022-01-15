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
        showLogin()
    }
    
    func showLogin() {
        let viewController = ViewController.createObject()
        viewController.coordinator = self
        viewController.viewModel = ViewModel()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func openSecondVC() {
        let viewController = SecondViewController.createObject()
        viewController.coordinator = self
        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func openThirdVC() {
        let viewController = ThirdViewController.createObject()
        viewController.coordinator = self
        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(viewController, animated: true)
    }
}

