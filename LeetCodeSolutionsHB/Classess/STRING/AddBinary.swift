//
//  AddBinary.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-28.
//

import Foundation

class AddBinary {

    static  func addBinary(_ a: String, _ b: String) -> String {///revise later 
        var a = a, b = b
        var carry = 0
        var result = ""
        while !a.isEmpty || !b.isEmpty || carry > 0 {
            let x = Int(a.isEmpty ? "0" : String(a.removeLast()))!
            let y = Int(b.isEmpty ? "0" : String(b.removeLast()))!
            let sum = x + y + carry
            result = String(sum % 2) + result
            carry = sum / 2
        }
        return result
    }
}
