//
//  TwoSums.swift
//  LeetCodeSolutionsHB

//  Created by Habib Durodola on 2021-01-04.
//

import Foundation

class TwoSums  {

    static func checkTwoSums (){
        let array  = [2,45,23, 11 , 13 , 7]
        let target = 9
        var dict : [Int: Int] = [:]
        for (index , value) in array.enumerated() {
            let complement = target - array[index]
            if let containned = dict[complement]{
                print("we found this \(containned) index \(index)")
            }
            else {
                dict[value] = index
            }
        }
    }

   static func maxProfit(_ prices: [Int]) -> Int {
        var minValue = prices[0]
        var maxValue = 0

        for (_ , value ) in prices.enumerated() {
            minValue = min(value, minValue)
            maxValue = max(value-minValue, maxValue)
        }

        return maxValue

    }

    static func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        for (index) in (0...digits.count-1).reversed() {

            if (digits[index] != 9){
                result[index] = digits[index] + 1
                return result
            }
            else {
                result[index] = 0

            }
        }
        if (result.first == 0) {
            result.insert(1, at: 0)
        }

        return result
    }

    static  func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var start = 0
        var end = nums.count - 1
        var mid = 0

        while (start <= end) {
            mid = (start + end)/2
            if (nums[mid] < target){
                start = mid + 1
            }
            else {
                end = mid - 1
            }
        }


        return start
    }

    static func removeDuplicatesNNN(_ nums: inout [Int]) -> Int {
        var counter = 0
        for (index) in (1...nums.count-1) {
            if (nums[index] != nums[index-1]){
                counter += 1
            }
        }
        return counter + 1
    }


    static  func removeElement(_ nums: inout [Int], _ val: Int) -> Int {

        var counter = 0

        for (index , value) in nums.enumerated() {

            if (value != val) {
                nums[index] =  nums[counter]
                nums[counter] = value
                counter += 1
            }
        }
        return counter

    }


}
