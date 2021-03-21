//
//  ContainsDuplicate.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-02-04.
//

import Foundation

class ContainsDuplicate {

    static func containsDuplicate(_ nums: [Int]) -> Bool {
        if (nums.isEmpty || nums.count == 1){
            return false
        }

        var dupSet = Set<Int>()
        for index in (0...nums.count-1){
            if (dupSet.contains(nums[index])){
                return true
            }
            else {
                dupSet.insert(nums[index])
            }
        }
        return false
    }


   static func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        if (nums.isEmpty || nums.count == 1){
            return false
        }

        var dict = [Int:Int]()
        for (index , value) in nums.enumerated() {
            if let contained = dict[value] {
                if (index - contained <= k) {
                    return true
                }
            }
            dict[value] = index
        }
        return false

    }

}




