//
//  MergeSortedArray.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-20.
//

import Foundation

class MergeSortedArray {

    //https://leetcode.com/problems/merge-sorted-array/
    static  func mergeNNNJNJ(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int)-> [Int] {
        var _m = m - 1
        var _n = n - 1
        var endLocation = m + n - 1

        while _m >= 0 && _n >= 0 {
            if nums1[_m] > nums2[_n] {
                nums1[endLocation] = nums1[_m]
                _m -= 1
            } else {
                nums1[endLocation] = nums2[_n]
                _n -= 1
            }

            endLocation -= 1
        }

        while _n >= 0 {
            nums1[endLocation] = nums2[_n]
            _n -= 1
            endLocation -= 1
        }

        return nums1
    }


    static func mergeBBB(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int)-> [Int] {
        var k = m+n-1
        var i = m-1
        var j = n-1
        while k >= 0 && j>=0 {
            if i>=0 && nums1[i] > nums2[j] {
                nums1[k] = nums1[i]
                i-=1
            } else {
                nums1[k] = nums2[j]
                j-=1
            }
            k-=1
        }

        return nums1
    }


    static func mergeSort(leftArray: [Int] , rightArray : [Int])-> [Int]{

        let left = leftArray.count
        let right = rightArray.count
        var leftIndex = 0
        var rightIndex = 0


        var orderedArray:[Int] = []

        for (_, _) in leftArray.enumerated() {

            while ((leftIndex < left) && (rightIndex < right)) {
                if (leftArray[leftIndex] < rightArray[rightIndex]) {
                    orderedArray.append(leftArray[leftIndex])
                    leftIndex += 1
                }
                else
                {
                    orderedArray.append(rightArray[rightIndex])
                    rightIndex += 1
                }
            }

            while (leftIndex < left)  {
                orderedArray.append(leftArray[leftIndex])
                leftIndex += 1
            }
            while (rightIndex < right) {
                orderedArray.append(rightArray[rightIndex])
                rightIndex += 1

            }



        }

        return orderedArray

    }
}
