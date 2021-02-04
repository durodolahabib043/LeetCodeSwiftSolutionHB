//
//  ReverseString.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-31.
//

import Foundation

class ReverseString {


    static  func reverseVowels(_ s: String) -> String {

        var inputChar = [Character](s)

        var start = 0
        var end = s.count - 1
        var temp : Character = " "

        while (start < end){//aeiou

            if (!isVowel(input: inputChar[start])){
                start += 1
            }
            else if (!isVowel(input: inputChar[end])){
                end -= 1
            }
            else if (isVowel(input: inputChar[start]) && isVowel(input: inputChar[end])){
                temp = inputChar[start]
                inputChar[start] = inputChar[end]
                inputChar[end] = temp
                start += 1
                end -= 1

            }
        }

        return (String(inputChar))

    }

    static  func isVowel(input : Character)->Bool{
        let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

        if (vowels.contains(input)){
            return true
        }
        return false

    }

    static func reverseString(_ s: inout [Character]) {
        var start = 0
        var end = s.count - 1

        var temp: Character = " "
        while (start < end) {
            temp = s[end]
            s[end] = s[start]
            s[start] = temp
            start += 1
            end -= 1
        }
    }
}
