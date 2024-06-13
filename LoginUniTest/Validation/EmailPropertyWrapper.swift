//
//  EmailPropertyWrapper.swift
//  LoginUniTest
//
//  Created by Bikram Singh on 13/06/24.
//

import Foundation

@propertyWrapper
struct EmailPropertyWrapper {
    
    private var email: String?
    
    var wrappedValue: String? {
        get {
            return self.isValidEmail(email) ? email : nil
        }
        set {
            email = newValue
        }
    }
    
    init(email: String?) {
        self.email = email
    }
    
    private func isValidEmail(_ email: String?) -> Bool {
        guard let email = email else { return false }
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
}
