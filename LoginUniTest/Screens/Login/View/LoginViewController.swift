//
//  LoginViewController.swift
//  LoginUniTest
//
//  Created by Bikram Singh on 11/06/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    //MARK: - Private Properties
    
    fileprivate lazy var viewModel: LoginViewModel = {
        return LoginViewModel()
    }()
    
    //MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

//MARK: - IBActions

extension LoginViewController {
    
    @IBAction func didTapOnLoginButton(_ sender: UIButton) {
        let type = self.viewModel.validateEmail(email: emailTextField.text, password: passwordTextField.text)
        self.showAlert(message: type.rawValue)
    }
    
}
