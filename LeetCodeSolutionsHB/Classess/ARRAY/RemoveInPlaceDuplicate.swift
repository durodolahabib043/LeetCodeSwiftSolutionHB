//
//  RemoveInPlaceDuplicate.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-04.
//

import Foundation

class RemoveInPlaceDuplicate {


    static func removeDuplicates( array: inout [Int]) -> Int {
        guard array.count > 0 else {
            return 0
        }

        var index = 0

        for (i , value) in array.enumerated() {

            print("indedex \(i) value \(value)")

            if (value != array[index]){
                index += 1
                array[index] = value

            }
        }

        return index + 1

    }
}
