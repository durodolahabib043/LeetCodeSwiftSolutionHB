//
//  Anagrams.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-02-15.
//

import Foundation

class Anagrams {

    static func funWithAnagrams(text: [String]) -> [String] {
        // Write your code here
        var anagram = [String]()
        var i  = 0
        var j =  1
        anagram.append(text[0])

        if (text.count == 0){
            return []
        }

        for (index) in (1...text.count-1) {
            if (isAnagram(text[i], text[index])){
                i += 1
            }else {
                anagram.append(text[j])
            }

        }
        return anagram.sorted()

    }

   static func isAnagram(_ s: String, _ t: String) -> Bool {
        func stringToDict(str: String) -> [Character: Int] {
            var dict = [Character: Int]()
            str.forEach({
                if let count = dict[$0] {
                    dict[$0] = count + 1
                } else {
                    dict[$0] = 0
                }
            })
            return dict
        }
        return stringToDict(str: s) == stringToDict(str: t)
    }



}
