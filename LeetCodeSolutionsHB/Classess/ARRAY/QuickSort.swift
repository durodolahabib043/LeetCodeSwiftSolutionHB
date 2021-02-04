//
//  QuickSort.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-01-20.
//

import Foundation


class QuickSort {

   static func mergeSort(_ array: [Int]) -> [Int] {

    guard array.count > 1 else { return array }
      // 1
      let middleIndex = array.count / 2
      // 2
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))

    let mergedArray = merge(leftArray, rightArray)

    return mergedArray

      //  return []
    }


static func merge(_ left: [Int], _ right: [Int]) -> [Int] {
      var leftIndex = 0
      var rightIndex = 0

      var orderedArray: [Int] = []

      // 1
      while leftIndex < left.count && rightIndex < right.count {
        // challenge!
        if (left[leftIndex] < right[rightIndex]){
            orderedArray.append(left[leftIndex])
            leftIndex += 1
        }
        else {
            orderedArray.append(right[rightIndex])
            rightIndex += 1
        }


      }

      // 2
      while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
      }

      while rightIndex < right.count {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
      }

      return orderedArray
    }
}
