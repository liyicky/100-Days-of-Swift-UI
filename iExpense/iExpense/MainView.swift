//
//  MainView.swift
//  iExpense
//
//  Created by Jason Cheladyn on 2022/07/11.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var expenses = Expenses()
    @State private var showingAddExpense = false
    
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Personal Expenses")) {
                        ForEach(expenses.filterItems(filterBy: "Personal")) { item in
                            CellView(item: item)
                        }
                        .onDelete(perform: removeItems)
                    }
                    
                    Section(header: Text("Business Expenses")) {                    
                        ForEach(expenses.filterItems(filterBy: "Business")) { item in
                            CellView(item: item)
                        }
                        .onDelete(perform: removeItems)
                    }
                }
                
                
            }
            .toolbar {
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .navigationTitle("iExpense")
        }
        .sheet(isPresented: $showingAddExpense) {
            AddView(expenses: expenses)
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct CellView: View {
    let item: ExpenseItem
    
    var bgColor: Color {
        switch item.amount {
        case _ where item.amount <= 10:
            return Color.green
        case _ where item.amount <= 100:
            return Color.yellow
        case _ where item.amount > 100:
            return Color.red
        default:
            return Color.black
        }
    }
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text(item.type)
            }
            
            Spacer()
            
            Text(item.amount, format: .currency(code: Locale.current.currencyCode!))
                .foregroundColor(bgColor)
        }
    }
}
