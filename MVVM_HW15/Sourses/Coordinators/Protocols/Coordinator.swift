//
//  Coordinator.swift
//  MVVM_HW15
//
//  Created by Ольга on 06.01.2022.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    
    func start()
}
