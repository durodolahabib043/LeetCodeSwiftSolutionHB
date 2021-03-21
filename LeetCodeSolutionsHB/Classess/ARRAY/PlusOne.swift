//
//  MaxSubArray.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-18.
//

import Foundation

class PlusOne {
//https://leetcode.com/problems/plus-one/
    static func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        for i in (0..<result.count).reversed() {
            if result[i] != 9 {
                result[i] = result[i]+1
                return result
            } else {
                result[i] = 0
            }
        }
        if result.first == 0 {
            result.insert(1, at: 0)
        }
        return result
    }


}
