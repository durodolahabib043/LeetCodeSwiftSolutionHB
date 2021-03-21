//
//  StringRevision.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-02-19.
//

import Foundation

class StringRevision {

    static func reverseVowels(_ s: String) -> String {

        var cahrer = [Character](s)
        var start = 0
        var end = cahrer.count - 1

        while (start < end) {
            if (!isVowel(value: String(cahrer[start]))){
                start += 1
            }
            else if (!isVowel(value: String(cahrer[end]))) {
                end -= 1
            }
            else {
                if (isVowel(value: String(cahrer[start]))) ==  (isVowel(value: String(cahrer[end]))) {
                    let temp = cahrer[end]
                    cahrer[end] = cahrer[start]
                    cahrer[start] = temp
                    start += 1
                    end -= 1
                }
            }
        }
        return String(cahrer)
    }

    static func isVowel(value: String)->Bool{

        let set : Set = ["a" ,"e","i", "o", "u" , "A", "E" , "I" , "O", "U"]

        return set.contains(value)
    }

    static func reverseString(_ s: inout [Character]) {
        var start = 0
        var end = s.count - 1
        while (start < end) {
            let temp = s[end]
            s[end] = s[start]
            s[start] = temp
            start += 1
            end -= 1
        }
        print(s)


    }

    static  func isPalindrome(_ s: String) -> Bool {
        let A = [Character](s.lowercased())

        var i = 0, j = A.count - 1
        while i < j {
            if !A[i].isLetter && !A[i].isNumber {
                i += 1
            } else if !A[j].isLetter && !A[j].isNumber {
                j -= 1
            } else if A[i] == A[j] {
                i += 1; j -= 1;
            } else {
                return false
            }
        }
        return true
    }

    static func lengthOfLastWord(_ s: String) -> Int {

        if (s.isEmpty){
            return 0
        }

        let trimmed = s.trimmingCharacters(in: .whitespacesAndNewlines)
        // var index = s.count - 1
        var counter = 0
        let charrrr = [Character](trimmed)

        for (index) in (0...charrrr.count-1).reversed() {
            if !(charrrr[index] == " " ){

                counter += 1
            }
            else {
                return counter
            }

        }


        return counter
    }


    static func isValid(_ s: String) -> Bool {

        let charrr = [Character](s)

        var stack = [Character]()

        for (_, value) in charrr.enumerated() {
            if (value == "(" || value == "{"  || value == "[") {
                stack.append(value)
            }
            else if (value == "]" && !stack.isEmpty && stack.last == "["){
                stack.removeLast()

            }
            else if (value == "}" && !stack.isEmpty && stack.last == "{"){
                stack.removeLast()
            }
            else if (value == ")" && !stack.isEmpty && stack.last == "("){
                stack.removeLast()
            }
            else {
                return false
            }
        }

        return stack.isEmpty

    }


    static func romanToInt(_ s: String) -> Int {

        let cahrr = [Character](s)
        var dict = [String : Int]()
        dict["I"] = 1
        dict["V"] = 5
        dict["X"] = 10
        dict["L"] = 50
        dict["C"] = 100
        dict["D"] = 500
        dict["M"] = 1000
        var sum = 0
        if (cahrr.count == 0 || cahrr.isEmpty) {
            return 0
        }

        let lastValue = cahrr[s.count-1]

        sum = dict[String(lastValue)]!

        for (index) in (0...cahrr.count-2).reversed() {

            let current =  dict[String(cahrr[index])]!//cahrr[index]
            let prev =  dict[String(cahrr[index+1])]!

            if current < prev {
                sum = prev - current
            }
            else {
                sum += current
            }

        }

        return sum

    }

    static func longestCommonPrefix(_ strs: [String]) -> String {

        if ( strs.isEmpty){
            return ""
        }

        var firstValue = strs[0]

        for (_, value) in strs.enumerated() {
            while !value.hasPrefix(firstValue) {
                firstValue.removeLast()
            }
            if firstValue == "" {
                return ""
            }
        }


        return firstValue

    }
}
