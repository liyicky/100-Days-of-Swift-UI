//
//  ContentView.swift
//  Training Project 1
//
//  Created by Jason Cheladyn on 2022/05/02.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputField = "5"
    @State private var selectedUnit = "centimeters"
    private var sliderSelections = ["centimeters", "feet"]
    
    private var output: String {
        
        if let input = Double(inputField) {
            let unit = Measurement(value: input, unit: selectedUnit == "feet" ? UnitLength.centimeters : UnitLength.feet)
            let conversion = unit.converted(to: selectedUnit == "feet" ? UnitLength.feet : UnitLength.centimeters)
            return String(conversion.value)
        }
        
        return "..."
    }
    
    var body: some View {
        HStack {
            Form {
                Section(header: Text("Enter height")) {
                    TextField("Start typing...", text: $inputField)
                        .cornerRadius(10)
                        .keyboardType(.decimalPad)
                }
                
                Section(header: Text("Conversion Unit")) {
                    Picker("Select unit", selection: $selectedUnit) {
                        ForEach(sliderSelections, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section(header: Text("\(inputField)\(selectedUnit == "feet" ? "cm" : "ft") in \(selectedUnit == "feet" ? "feet" : "cm") is ...")) {
                    Text(output)
                        .font(.system(size: 50, design: .rounded))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
