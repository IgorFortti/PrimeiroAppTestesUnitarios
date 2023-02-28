//
//  PrimeiroAppTestesUnitariosTests.swift
//  PrimeiroAppTestesUnitariosTests
//
//  Created by Igor Fortti on 28/02/23.
//

import XCTest
@testable import PrimeiroAppTestesUnitarios

class PrimeiroAppTestesUnitariosTests: XCTestCase {
    
    var vc: ViewController?
    
    override func setUpWithError() throws {
        vc = ViewController()
    }
    
    override func tearDownWithError() throws {
        vc = nil
    }
    
    func testPrimeiraFuncao() throws {
        print("2")
        var valorTotal = 10 + 10
        XCTAssertEqual(30, valorTotal)
    }
    
}
