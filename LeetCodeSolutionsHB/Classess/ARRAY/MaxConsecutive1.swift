//
//  MaxConsecutive1.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-02-11.
//

import Foundation

class MaxConsecutive1 {

    // [1,0,1,1,0,1]
    static func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var counter = 0
        var maxx = 0

        for (_, valuve) in nums.enumerated() {
            if (valuve == 1){
                counter += 1
                maxx = max(maxx, counter)
            }
            else {
                counter = 0
            }
        }
        return maxx

    }

    static func fib(_ n: Int) -> Int {

        if (n == 0) {
            return 0
        }

        if (n == 1) {
            return 1
        }

        var counter  = 0
        var prev = 0
        var current = 1
        var sum = 0

        while (counter < n-1) {
            sum = prev + current
            prev = current
            current = sum
            counter += 1

        }

       // return fib(n - 1) + fib(n - 2)

      //  return -1

        return sum

    }
}
