//
//  TwoSum2.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-02-03.
//

import Foundation

class TwoSum2 {

    static func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {

        var dict : [Int : Int] = [:]
        var complement = 0

        for (index, value) in numbers.enumerated() {
            complement = target - value
            if let contain = dict[complement]{

               return [contain , index + 1 ]
            }
            else {
                dict[value] = index + 1
            }
        }
        return []

    }


}
