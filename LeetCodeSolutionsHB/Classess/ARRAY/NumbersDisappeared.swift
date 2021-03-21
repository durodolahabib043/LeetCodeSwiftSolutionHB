//
//  NumbersDisappeared.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-02-11.
//

import Foundation

class NumbersDisappeared {


    static  func findDisappearedNumbers(_ nums: [Int]) -> [Int] {

        var set = Set<Int>()
        var missArray = [Int]()

        for (_ , value) in nums.enumerated() {
            set.insert(value)
        }
        for (index, _) in nums.enumerated() {

            if(!set.contains(index+1)) {
                missArray.append(index+1)
            }
        }

        return missArray
    }

}


