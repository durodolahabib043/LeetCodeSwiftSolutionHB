//
//  CommonPrefix.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-26.
//

import Foundation


class CommonPrefix {


 static  func longestCommonPrefix(_ strs: [String]) -> String {
           if strs.count == 0 {
               return ""
           }
           var result = strs[0]
           for str in strs {
               while !str.hasPrefix(result) {
                   result.removeLast()
               }
               if result == "" {
                   return ""
               }

           }
           return result
       }
}
