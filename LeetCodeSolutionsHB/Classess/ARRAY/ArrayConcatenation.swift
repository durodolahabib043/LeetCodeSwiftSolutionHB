//
//  ArrayConcatenation.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-03-22.
//

import Foundation

class ArrayConcatenation {

    //https://www.youtube.com/watch?v=pduV7qHzFaU&ab_channel=NareshGupta
    static  func canFormArray(_ arr: [Int], _ pieces: [[Int]]) -> Bool {
        var dic = [Int: [Int]]()

        for (index, value) in arr.enumerated() {

            dic[value] = pieces[index]

        }


        print(dic)

        return false

    }
}
