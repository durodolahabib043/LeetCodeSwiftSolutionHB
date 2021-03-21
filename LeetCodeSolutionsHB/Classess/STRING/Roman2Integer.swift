//
//  Roman2Integer.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-25.
//

import Foundation

class Roman2Integer {

    static  func romanToInt(_ s: String) -> Int {
        let chars = [Character](s)
        var sum = 0

        var valueMap: [String: Int] = [:]
        valueMap["I"] = 1
        valueMap["V"] = 5
        valueMap["X"] = 10
        valueMap["L"] = 50
        valueMap["C"] = 100
        valueMap["D"] = 500
        valueMap["M"] = 1000
        let lastNumber = chars[chars.count-1]

        guard let xxxxxx = valueMap[String(lastNumber)] else {
            return -1
        }

        sum = xxxxxx

        let reversedCollection = (0 ... chars.count-2).reversed()
        // let sum = 0

        for index in reversedCollection {
            let currentValue = chars[index]
            guard let dictCurrentValue = valueMap[String(currentValue)] else {
                return -1
            }
            let prevValue = chars[index+1]
            guard let dictPrevValue = valueMap[String(prevValue)] else {
                return -1
            }

            if (dictPrevValue <= dictCurrentValue) {
                sum += dictCurrentValue
            }
            else
            {
                sum = (dictPrevValue-dictCurrentValue)
            }

        }

        return sum
    }



}
