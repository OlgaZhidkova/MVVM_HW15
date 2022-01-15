//
//  ViewModel.swift
//  MVVM_HW15
//
//  Created by Ольга on 31.12.2021.
//

import Foundation

class ViewModel {
    var statusText = Dynamic("")
    var isLoggedIn = false
    
    func loginButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "FAILED! Try again"
            isLoggedIn = false
        } else {
            statusText.value = "SUCCESS"
            isLoggedIn = true
        }
    }
}
 
