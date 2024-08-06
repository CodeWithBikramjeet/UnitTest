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

import Foundation

struct Student: Codable {
    let id: Int
    let name: String
    let grade: String
}

import Foundation

class StudentService {
    private let session: URLSession
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    func fetchStudentList(completion: @escaping (Result<[Student], Error>) -> Void) {
        let url = URL(string: "https://api.example.com/students")!
        
        let task = session.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "No data", code: 0, userInfo: nil)))
                return
            }
            
            do {
                let students = try JSONDecoder().decode([Student].self, from: data)
                completion(.success(students))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}

import Foundation

class MockURLProtocol: URLProtocol {
    static var requestHandler: ((URLRequest) throws -> (HTTPURLResponse, Data))?
    
    override class func canInit(with request: URLRequest) -> Bool {
        return true
    }
    
    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }
    
    override func startLoading() {
        guard let handler = MockURLProtocol.requestHandler else {
            fatalError("Request handler is not set.")
        }
        
        do {
            let (response, data) = try handler(request)
            client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed)
            client?.urlProtocol(self, didLoad: data)
            client?.urlProtocolDidFinishLoading(self)
        } catch {
            client?.urlProtocol(self, didFailWithError: error)
        }
    }
    
    override func stopLoading() {}
}


