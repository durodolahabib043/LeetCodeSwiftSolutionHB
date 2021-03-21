//
//  Segments.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-02-28.
//

import Foundation


class Segments {


    static func countSegments(_ s: String) -> Int {

        if s.isEmpty {
            return 0
        }
        var count = 0
        for char in s{

            if char == " " {
                count += 1
            }

        }

        return count + 1

    }
}
