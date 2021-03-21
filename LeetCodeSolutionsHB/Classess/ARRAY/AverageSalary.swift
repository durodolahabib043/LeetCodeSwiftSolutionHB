//
//  AverageSalary.swift
//  LeetCodeSolutionsHB
//
//  Created by Habib Durodola on 2021-03-08.
//

import Foundation

class AverageSalary {
    
    
    static func average(_ salary: [Int]) -> Double {

       // var newSalary = salary.sort()

        if (salary.count == 1){
            return Double(salary[0])
        }
        var averageSalary = 0.0
        var sum = 0

        for (_, value) in salary.sorted().enumerated() {


            sum += value
        }

        let diff = sum - salary.sorted()[0] - salary.sorted()[(salary.count - 1)]
         averageSalary = Double(diff / (salary.count - 2))
        

        return averageSalary
        
    }
    
    
}
