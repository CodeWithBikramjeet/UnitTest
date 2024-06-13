//
//  LoginViewModelTextCases.swift
//  LoginUniTestTests
//
//  Created by Bikram Singh on 13/06/24.
//

import XCTest
@testable import LoginUniTest

final class LoginViewModelTextCases: XCTestCase {

    //MARK: - Private Properties
    
    private var viewModel: LoginViewModel?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.viewModel = LoginViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        self.viewModel = nil
    }

    //MARK: - Custom Unit Case Methods
    
    func testInvalidEmail() {
        guard let viewModel else {
            XCTFail("View Model cannot be nil")
            return
        }
        
        let type = viewModel.validateEmail(email: "", password: "")
        XCTAssertEqual(type, .emptyEmail, "Email should be empty")
        XCTAssertEqual(type.rawValue, "Email cannot be empty")
    }
    
    func testInvalidPassword() {
        guard let viewModel else {
            XCTFail("View Model cannot be nil")
            return
        }
        
        let passwordType = viewModel.validateEmail(email: "bikramdhiman01@gmail.com", password: "")
        XCTAssertEqual(passwordType, .emptyPassword, "Password should be empty")
        
        //Length of Password
        
        let passwordLegthType = viewModel.validateEmail(email: "bikramdhiman01@gmail.com", password: "1234")
        XCTAssertEqual(passwordLegthType, .lengthPassword, "Password should be more then 8 characters")
    }
    
    func testLoginSuccess() {
        guard let viewModel else {
            XCTFail("View Model cannot be nil")
            return
        }
        
        let type = viewModel.validateEmail(email: "bikramdhiman01@gmail.com", password: "123456789")
        XCTAssertEqual(type, .success, "Login successful")
    }
    
}
