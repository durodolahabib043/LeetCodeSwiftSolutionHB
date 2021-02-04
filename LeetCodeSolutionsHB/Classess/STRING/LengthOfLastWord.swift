//
//  LengthOfLastWord.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-28.
//

import Foundation

class LengthOfLastWord {


    static func lengthLastWord(input: String)-> Int{

        if (input.isEmpty || input == " "){
            return 0
        }
        let charNN = [Character](input.trimmingCharacters(in: .whitespacesAndNewlines))

        var count = 0
        if (charNN.count == 0) {
            return count
        }
        for index in (0...charNN.count-1).reversed() {

            if (charNN[index] != " "){
                count += 1
            }
            else {
                return count
            }
        }

        return count

    }
}
