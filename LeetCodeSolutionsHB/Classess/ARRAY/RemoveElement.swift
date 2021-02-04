//
//  RemoveElement.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-18.
//

import Foundation

class RemoveElement {

    static  func removeElement(_ nums: inout [Int], _ val: Int) -> Int {

        var count = 0 // 2,3,3,2
        for (_ , value) in nums.enumerated() {
            if (value != val){
                nums[count] =  value
                count += 1
            }
        }
        return count
    }
}
