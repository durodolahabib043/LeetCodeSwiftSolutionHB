//
//  AnagramsssNNN.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-02-21.
//

import Foundation

class AnagramsssNNN {
    static func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {return false}
        
        var cDict = [Character: Int]()
        var tDict = [Character: Int]()
        
        for c in s {
            cDict[c] = (cDict[c] ?? 0) + 1
        }
        
        for c in t {
            tDict[c] = (tDict[c] ?? 0) + 1
        }
        return cDict == tDict
        
    }
}


