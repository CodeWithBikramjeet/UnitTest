//
//  LoginViewModel.swift
//  LoginUniTest
//
//  Created by Bikram Singh on 11/06/24.
//

import Foundation

final class LoginViewModel {
    
    //MARK: - Private Properties
    
    private lazy var helper: ValidationHelper = {
        return ValidationHelper()
    }()
    
    //MARK: - Public Methods
    
    func checkLoginValidation(email: String?, password: String?)-> ValidationType {
        self.helper.validateLogin(email: email, password: password)
    }
    
}
