//
//  LoginAPIModel.swift
//  LoginUniTest
//
//  Created by Bikram Singh on 13/06/24.
//

import Foundation

struct LoginAPIModel {
    
    @EmailPropertyWrapper var email: String?
    var password: String?
}
