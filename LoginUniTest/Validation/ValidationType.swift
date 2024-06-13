//
//  ValidationType.swift
//  LoginUniTest
//
//  Created by Bikram Singh on 11/06/24.
//

import Foundation

enum ValidationType: String {
    case emptyEmail = "Email cannot be empty"
    case validEmail = "Please enter valid email"
    case emptyPassword = "Password cannot be empty"
    case lengthPassword = "Password should be more then 8 characters"
    case success = "Success"
}
