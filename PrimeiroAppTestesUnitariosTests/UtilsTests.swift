//
//  UtilsTests.swift
//  PrimeiroAppTestesUnitariosTests
//
//  Created by Igor Fortti on 28/02/23.
//

import XCTest
@testable import PrimeiroAppTestesUnitarios
// Funcao para verificar se uma string é um número Int
// Funcao para gerar um número aleatório de 0 a um valor específico
// Funcao para remover os espacos em branco no início e no final de uma String

class UtilsTests: XCTestCase {

    func testAverage() {
        let numbers = [1, 2, 3, 4, 5]
        let expected = 3
        let result = Utils.average(numbers: numbers)
        XCTAssertEqual(result, expected)
    }
    
    func testIsInt() {
        let textTrue = "100000"
        let resultTrue = Utils.isInt(text: textTrue)
        let textFalse = "100Text"
        let resultFalse = Utils.isInt(text: textFalse)
        XCTAssertTrue(resultTrue, "O resultTrue não pode ser false, pois ele deve conseguir converter a string \(textTrue) em um INT")
        XCTAssertFalse(resultFalse,"O resultTrue não pode ser true, pois ele não deve conseguir converter a string \(textFalse) em um INT")
    }
    
    func testRandom() {
        let upperBound = 1000
        let result = Utils.random(upperBound: upperBound)
        XCTAssertTrue(result >= 0 && result <= upperBound, "O número sorteado não pode ser menor que zero ou maior que o upperBound \(upperBound)")
    }
    
    func testTrim() {
        let text = "     Test Example   "
        let expected = "Test Example"
        let result = Utils.trim(text: text)
        XCTAssertEqual(result, expected, "O texto não deve conter espacos no início e no final da String \(text)")
    }

}
