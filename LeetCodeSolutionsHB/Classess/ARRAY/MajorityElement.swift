//
//  MajorityElement.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-02-03.
//

import Foundation

class MajorityElement {

//https://leetcode.com/problems/majority-element/
    static func majorityElement(_ nums: [Int]) -> Int {
        var dict : [Int : Int] = [:]
        for (_, value) in nums.enumerated() {
            if let container = dict[value]{
                dict[value] =  container + 1
            }else {
                dict[value] =  1
            }
            if let fina = dict[value] {
                if  (fina > nums.count/2){
                    return value
                }
            }
        }
        return -1
    }


    static func majorityElementNNNNN(_ nums: [Int]) -> Int {
        var hashDict = [Int:Int]()

        for num in nums {
            if hashDict[num] != nil {
                hashDict[num] = hashDict[num]! + 1
            } else {
                hashDict[num] = 1
            }
            if hashDict[num]! > nums.count/2 {
                return num
            }
        }
        return -1
    }
}
