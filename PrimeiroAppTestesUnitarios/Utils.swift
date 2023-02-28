//
//  Utils.swift
//  PrimeiroAppTestesUnitarios
//
//  Created by Igor Fortti on 28/02/23.
//

import Foundation

class Utils {
    
    static func average(numbers: [Int]) -> Int {
        return numbers.reduce(0, +) / numbers.count
    }
    
    static func isInt(text: String) -> Bool {
        return Int(text) != nil
    }
    
    static func random(upperBound: Int) -> Int {
        return Int.random(in: 0...upperBound)
    }
    
    static func trim(text: String) -> String {
        return text.trimmingCharacters(in: .whitespaces)
    }
    
}
