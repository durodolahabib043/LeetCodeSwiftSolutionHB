//
//  File.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-03-15.
//

import Foundation


class PlantFlowes {

   static func canPlaceFlowers( flowerbed: [Int], n: Int) -> Bool {
        var count = 0
        var newFlowerBed = flowerbed

        for (index, value) in newFlowerBed.enumerated() {

            if value == 0 {
               let prev = index == 0 ? 0 : newFlowerBed[index-1]
              let next = index == (newFlowerBed.count - 1) ? 0 : newFlowerBed[index+1]

                if (prev == 0 && next == 0){
                    newFlowerBed[index] = 1
                    count += 1
                }
            }

        }

        return count >= n
    }
}
