//
//  3Sums.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-03-28.
//

import Foundation

class ThreeSums {

   static func threeSum(_ nums: [Int]) -> [[Int]] {
            var result = [[Int]]()

            let nums = nums.sorted()
            var index = 0

            while index < (nums.count - 2) {

                var start = index + 1
                var end = nums.count - 1

                while start < end {
                    let sum = nums[index] + nums[start] + nums[end]

                    if sum == 0 {
                        result.append([nums[index], nums[start], nums[end]])
                    }

                    if sum < 0 {
                        let currentStart = start
                        while start < end && nums[start] == nums[currentStart] {
                            start += 1
                        }
                    } else {
                        let currentEnd = end
                        while start < end && nums[end] == nums[currentEnd] {
                            end -= 1
                        }
                        end -= 1
                    }
                }

                let currentIndex = index
                while index < (nums.count - 2) && nums[index] == nums[currentIndex] {
                    index += 1
                }
            }

            return result
        }

}
