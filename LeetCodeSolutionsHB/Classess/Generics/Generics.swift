//
//  Generics.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-29.
//

import Foundation

class Generics  {


    static func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
        let temporaryA = a
        a = b
        b = temporaryA
    }


    static func same<T,V> (_ input: T , _ input2: V) {

    }
}
