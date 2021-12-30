//
//  Dynamic.swift
//  MVVM_HW15
//
//  Created by Ольга on 31.12.2021.
//

import Foundation

class Dinamic<T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?
    
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init (_ v: T) {
        value = v
    }
}
