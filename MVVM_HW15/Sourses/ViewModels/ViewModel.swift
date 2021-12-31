//
//  ViewModel.swift
//  MVVM_HW15
//
//  Created by Ольга on 31.12.2021.
//

import Foundation

class ViewModel {
    var statusText = Dynamic("")
    
    func loginButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "FAILED! Try again"
        } else {
            statusText.value = "SUCCESS"
        }
    }
}
