//
//  Expenses.swift
//  iExpense
//
//  Created by Jason Cheladyn on 2022/07/11.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {
                items = decodedItems
                return
            }
        }
        items = []
    }
    
    func filterItems(filterBy type: String) -> [ExpenseItem] {
        var filteredItems = [ExpenseItem]()
        for item in items {
            if item.type == type {
                filteredItems.append(item)
            }
        }
        return filteredItems
    }
}
