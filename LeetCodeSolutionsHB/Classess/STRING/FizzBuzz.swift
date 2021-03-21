//
//  FizzBuzz.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-02-12.
//

import Foundation

class FizzBuzz {

    static func fizzBuzz(n: Int) {
        // Write your code here

        if (n % 3 == 0 && n % 5 == 0){
            print("FizzBuzz")
        }
        else if (n % 3 == 0) {
            print("Fizz")
        }
        else if (n % 5 == 0) {
            print("Buzz")
        }
        else {
            print(n)
        }

    }

}
