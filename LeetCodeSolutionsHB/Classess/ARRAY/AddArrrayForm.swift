//
//  AddArrrayForm.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-03-03.
//

import Foundation


class AddArrrayForm {

    static func addToArrayForm(_ A: [Int], _ K: Int) -> [Int] {
         var answer: [Int] = []
          var carry = K
          var i = A.count - 1

          while i >= 0 || carry > 0 {
              let aDigit = i >= 0 ? A[i] : 0
              let sum = carry + aDigit

              answer.append(sum % 10)

              carry = sum / 10
              i -= 1
          }

          return answer.reversed()
    }


}
