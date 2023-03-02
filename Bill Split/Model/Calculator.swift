//
//  Calculator.swift
//  Bill Splitting
//
//  Created by Yevhenii Vladichuk on 01/03/2023.
//

import Foundation

struct Calculator {
    var totalBill: Double?
    var tipPercent: Double?
    var numberOfPerson: Int?
    var sumForPerson: String?
    
    mutating func getSum()-> String {
        
        let percent = ((totalBill ?? 0.0) * (tipPercent ?? 0.0)) / 100
        let sum = ((totalBill ?? 0.0) + percent) / Double(numberOfPerson ?? 0)
        sumForPerson = String(format: "%.1f",sum)
        return sumForPerson!
    }
}
