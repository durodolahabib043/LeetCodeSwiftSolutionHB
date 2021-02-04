//
//  Fibonacci.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-26.
//

import Foundation


class Fibonacci {

    static func fib(_ n: Int) -> Int {
        if (n == 0) {
            return 0
        }
        if (n == 1) {
            return 1
        }
        return fib(n-1) + fib(n-2)
    }

    static func interateFib(_ n: Int)-> Int {

        if (n == 0) {
            return 0
        }
        if (n == 1) {
            return 1
        }

        var current = 0
        var prev1 = 0
        var prev2 = 1

        for _ in (2...n) {
            current = prev1 + prev2
            prev1 = prev2
            prev2 = current

        }


        return current

    }


}
