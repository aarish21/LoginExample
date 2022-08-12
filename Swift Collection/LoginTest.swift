//
//  LoginTest.swift
//  Swift CollectionTests
//
//  Created by Aarish on 12/08/22.
//

import XCTest
@testable import Swift_Collection
class LoginTest: XCTestCase {
var result = LoginValidation()
    func testEmptyFields() {
       let result = result.validation(email: "", password: "")
        XCTAssertFalse(result)
    }
    func testEmptyEmail() {
        let result = result.validation(email: "", password: "dsadsa")
        XCTAssertFalse(result)
    }
    func testEmptyPasswprd() {
        let result = result.validation(email: "dsadsa", password: "")
        XCTAssertFalse(result)
    }
    func testBothFilled() {
        let result = result.validation(email: "dsadfa", password: "dsadsa")
        XCTAssertTrue(result)
    }
}
