//
//  LoginModel.swift
//  Resume
//
//  Created by Виталий Сосин on 29.05.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import Foundation

struct LoginModel {
    let login: String
    let password: String
}

extension LoginModel {
    static func getLogin() -> [LoginModel] {
        return [LoginModel(login: "root", password: "root")]
    }
}
