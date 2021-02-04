//
//  Sum2Zero.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-26.
//

import Foundation

class Sum2Zero {

    static func sum2Zero(input : [Int])-> Bool {

        var dict  =  [Int : Int]()

        for (_, value) in input.enumerated() {
            let complement = 0 - value
            if let contain = dict[complement] {
                print("This is contained herer\(contain) currentvaluve \(value)")
                return true
            }
            else {
                dict[value] = complement
            }
        }

        print("No match")
        return false
    }
}
