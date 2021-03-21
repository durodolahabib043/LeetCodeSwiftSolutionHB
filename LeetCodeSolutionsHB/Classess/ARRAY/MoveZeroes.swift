//
//  MoveZeroes.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-02-05.
//

import Foundation

class MoveZeroes {

    static func moveZeroes(_ nums: inout [Int]) {
        if   (nums.isEmpty || nums.count == 0){
            return
        }
        var firstCursor = 0
        var secondCursor = 1

        if !(nums[firstCursor] == 0){
            firstCursor += 1
            secondCursor += 1
        }


        while (secondCursor < nums.count) {
            if (nums[secondCursor] == 0){
                secondCursor += 1
            }
            else {
                nums[firstCursor] = nums[secondCursor]
                nums[secondCursor] = 0
                secondCursor += 1
                firstCursor += 1
            }
        }
        print(nums)
    }

}
