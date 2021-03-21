//
//  SearchInset.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-18.
//

import Foundation

class SearchInset {
// o(log(n)) //https://leetcode.com/problems/search-insert-position/
    static func searchInsert(_ nums: [Int], _ target: Int) -> Int {
            var left = 0
            var end = nums.count - 1
            while left <= end {
                let mid = (left + end) / 2
                if nums[mid] < target {
                    left = mid + 1
                } else {
                    end = mid - 1
                }
            }
            return left
        }
}
