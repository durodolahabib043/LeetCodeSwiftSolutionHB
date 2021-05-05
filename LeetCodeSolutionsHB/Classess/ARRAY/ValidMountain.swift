//
//  ValidMountain.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-04-12.
//

import Foundation

class ValidMountain {

    static func validMountainArray(_ arr: [Int]) -> Bool {
        if (arr.count < 3) {
            return false
        }
        var start = 0
        var end = arr.count - 1

        while ((start + 1 < arr.count - 1 ) && (arr[start] < arr[start + 1])){
           start += 1
        }
        while ((end - 1 > 0) && (arr[end] < arr[end - 1])){
            end -= 1
        }

        return start == end

    }
}
