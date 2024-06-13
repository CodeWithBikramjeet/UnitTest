//
//  ValidationHelper.swift
//  LoginUniTest
//
//  Created by Bikram Singh on 11/06/24.
//

import Foundation

final class ValidationHelper {
        
    //MARK: - Private Methods
    
    private func isEmailEmpty(email: String?) -> ValidationType {
        guard let email, !email.isEmpty else { return .emptyEmail }
        return .success
    }
    
    private func validatePassword(password: String?) -> ValidationType {
        guard let password, !password.isEmpty else { return .emptyPassword }
        guard password.count > 8 else { return .lengthPassword }
        return .success
    }
    
    //MARK: - Public Methods
    
    func validateLogin(email: String?, password: String?) -> ValidationType {
        let emailType = isEmailEmpty(email: email)
        let passwordType = validatePassword(password: password)
        if emailType != .success {
            return emailType
        }else if passwordType != .success {
            return passwordType
        }else {
            return .success
        }
    }
    
}
