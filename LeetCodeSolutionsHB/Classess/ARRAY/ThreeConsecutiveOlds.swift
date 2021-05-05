//
//  ThreeConsecutiveOlds.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-04-21.
//
//https://leetcode.com/problems/three-consecutive-odds/
import Foundation

class ThreeConsecutiveOlds {

    static func threeConsecutiveOdds(_ arr: [Int]) -> Bool {

        if arr.isEmpty || arr.count < 3 {
            return false
        }
        for (index, _) in arr.enumerated() {
            if ((arr[index] %  2 == 1) && (arr[index+1] %  2 == 1) && (arr[index+2] %  2 == 1)) {
                return true
            }
        }

        return false
    }
}
