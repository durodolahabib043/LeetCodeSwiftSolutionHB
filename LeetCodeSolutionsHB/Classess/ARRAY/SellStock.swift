//
//  SellStock.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-02-02.
//

import Foundation

class SellStock {

   static func maxProfit(_ prices: [Int]) -> Int {
      guard prices.count > 1 else { return 0 }

      var minPrice = prices.first!
      var maxProfit = 0

    for currentPrice in (1...prices.count-1) {
        minPrice = min(prices[currentPrice], minPrice)
        maxProfit = max(prices[currentPrice] - minPrice, maxProfit)
      }

      return maxProfit
    }





   static func maxProfitNNN(_ prices: [Int]) -> Int { ///TODO
        guard prices.count > 1 else {
            return 0
        }

        var maxProfit = 0
        for i in 1..<prices.count {
            if prices[i] > prices[i - 1] {
                maxProfit += prices[i] - prices[i - 1]
            }
        }

        return maxProfit
    }

}


