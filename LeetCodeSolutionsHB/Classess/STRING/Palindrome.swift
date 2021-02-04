//
//  Palindrome.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-31.
//

import Foundation


class Palindrome {
    static func isPalindrome(_ s: String) -> Bool {
        let A = [Character](s.lowercased())
        var i = 0, j = A.count - 1
        while i < j {
            if !A[i].isLetter && !A[i].isNumber {
                i += 1
            } else if !A[j].isLetter && !A[j].isNumber {
                j -= 1
            } else if A[i] == A[j] {
                i += 1; j -= 1;
            } else {
                return false
            }
        }
        return true
    }
}
