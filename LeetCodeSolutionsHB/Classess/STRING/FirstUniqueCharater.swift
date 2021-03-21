//
//  FirstUniqueCharater.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-02-21.
//

import Foundation

class FirstUniqueCharater {

    static func firstUniqChar(_ s: String) -> Int {
        var dict = [Character : Int]()

        for (_, value) in s.enumerated() {
            if let contain = dict[value] {
                // contains
                dict[value] = contain + 1
            }
            else {
                dict[value] = 1
            }
        }

        for (index , value) in s.enumerated() {

            if let valueNNN = dict[value]
            {
                if valueNNN == 1{
                    return index
                }
            }

        }
        return -1
    }
}





