//
//  MissingNumber.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-02-05.
//

import Foundation

class MissingNumber {

    static func missingNumber(_ nums: [Int]) -> Int {

        if (nums.isEmpty || nums.count == 1 ){
            return 1
        }
        var n = nums.count
        var initailSum = 0
        while (n>=0) {
            initailSum += n
            n -= 1
        }
        var finalSum = 0
        for (_, value ) in nums.enumerated() {
            finalSum += value
        }
        return (initailSum - finalSum)
    }

    //    static  func missingNumberNN(_ nums: [Int]) -> Int {
    //        var sum = nums.count * (nums.count + 1) / 2
    //        return sum - nums.reduce(0, +)
    //    }

}
