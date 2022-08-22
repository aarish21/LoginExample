//
//  ApiResponseTests.swift
//  Swift CollectionTests
//
//  Created by Aarish on 17/08/22.
//

import XCTest
@testable import Swift_Collection
class ApiResponseTests: XCTestCase {
    func testApiResponseWithValidRequest() {
        let get = GetData()
        get.getTopAnime { result in
            XCTAssertNotNil(result)
        }
    }

}
