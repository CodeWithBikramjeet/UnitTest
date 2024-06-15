#Login Module Unit Test Cases

This repository contains unit test cases for the Login Module of an iOS application written in Swift 5. The unit tests are designed to
ensure the correct functionality of the login process, including input validation and API interaction.

##Table of Contents

- Introduction
- Setup
- Test Cases
- Validation Tests
- Running Tests
- Contributing


##Introduction

**The Login Module handles user authentication, including validating user input and communicating with the authentication API. This 
README provides an overview of the unit tests implemented to verify the correctness and robustness of the Login Module.

###Setup:-

To run the unit tests, follow these steps:

###1. Clone the repository:-

**git clone https://github.com/your-repository.git

###2. Open the project in Xcode:

**open YourProject.xcodeproj

#Test Cases

###3. Validation Tests:-

These tests verify the correctness of input validation logic in the Login Module. The following scenarios are tested:

**Empty Email:-** Ensures that the login function returns an error when the email field is empty.
**Invalid Email Format:-** Ensures that the login function returns an error for improperly formatted email addresses.
**Empty Password:-** Ensures that the login function returns an error when the password field is empty.
**Valid Inputs:-** Ensures that the login function accepts valid email and password combinations.

#Running Tests

**To run the unit tests:

    1. Open the project in Xcode.
    2. Select the test target (e.g., YourProjectTests) from the scheme selector.
    3. Press Cmd+U to run all tests.
    
Alternatively, you can run specific tests by selecting them in the test navigator and pressing Cmd+U.

#Contributing

We welcome contributions to improve the test coverage and functionality of the Login Module. If you have suggestions or improvements, 
please submit a pull request or open an issue.
