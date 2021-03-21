//
//  ArithemeticProgression.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-03-09.
//

import Foundation

class ArithemeticProgression {
    static func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {

        let j = 1

        let diff = arr.sorted()[j] - arr.sorted()[0]

        for index in (1...arr.sorted().count-1).reversed() {
            if (diff != (arr.sorted()[index] - arr.sorted()[index-1])){
                return false
            }
        }
        return true
    }

}
