//
//  ValidParenthesis.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-26.
//

import Foundation

class ValidParenthesis {


    static func validParenthesis(input: String)->Bool {

        if (input.count % 2) != 0 {
            return false
        }

        let inputArray = [Character](input)

        var stack = [Character]()

        for (_ , value) in inputArray.enumerated() {

            if (value == "(" || value == "[" || value == "{") {
                stack.append(value)
            }
            else if ((value == ")") && (!stack.isEmpty) && (stack.last == "(")) {
                stack.removeLast()
            }
            else if ((value == "]") && (!stack.isEmpty) && (stack.last == "[")) {
                stack.removeLast()
            }
            else if ((value == "}") && (!stack.isEmpty) && (stack.last == "{")) {
                stack.removeLast()
            }
            else {
                return false
            }
        }
        return stack.isEmpty

    }
}
