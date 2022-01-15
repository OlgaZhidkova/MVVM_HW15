//
//  User.swift
//  MVVM_HW15
//
//  Created by Ольга on 31.12.2021.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
        User(login: "mvvm", password: "12345")
    ]
}
