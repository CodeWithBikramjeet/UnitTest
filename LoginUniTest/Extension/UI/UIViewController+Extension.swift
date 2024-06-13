//
//  UIViewController+Extension.swift
//  LoginUniTest
//
//  Created by Bikram Singh on 11/06/24.
//

import UIKit

extension UIViewController {
    
    func showAlert(message: String) {
        let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Okey", style: .default)
        alertController.addAction(ok)
        present(alertController, animated: true)
    }
    
}
