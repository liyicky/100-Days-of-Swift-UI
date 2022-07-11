//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Jason Cheladyn on 2022/07/11.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
