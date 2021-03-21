//
//  AddStrings.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-03-01.
//

import Foundation

class AddStrings {

    static func addStrings(_ num1: String, _ num2: String) -> String {

           let chs1: [Character] = Array(num1).reversed()
           let chs2: [Character] = Array(num2).reversed()
           var isOne = 0
           var res = [Character]()
           var i = 0
           var j = 0

           while i < chs1.count || j < chs2.count || isOne == 1 {
               let c1 = i < chs1.count ? Int(String(chs1[i]))! : 0
               let c2 = j < chs2.count ? Int(String(chs2[j]))! : 0

               let s = (c1 + c2 + isOne) % 10
               isOne = (c1 + c2 + isOne) / 10
               i += 1
               j += 1
               res.append(Character(String(s)))
           }
           return String(res.reversed())

    }

}
