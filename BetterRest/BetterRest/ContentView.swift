//
//  ContentView.swift
//  BetterRest
//
//  Created by Jason Cheladyn on 2022/06/23.
//

import SwiftUI
import CoreML

struct ContentView: View {
    
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    @State private var wakeUp = defaultWakeUpTime
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    
    static var defaultWakeUpTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date.now
    }
    
    private var result: String {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)

            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            let sleepTime = wakeUp - prediction.actualSleep
            
            return sleepTime.formatted(date: .omitted, time: .shortened)
        } catch {
            // something went wrong!
            return "Sorry, there was a problem calculating your bedtime."
        }
    }
    
    let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    let lemonYellow = Color(hue: 0.1639, saturation: 1, brightness: 1)
    let steelGray = Color(white: 0.4745)
    
    init(){
        UITableView.appearance().backgroundColor = .clear
//        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView {
            Form {
                // Coffe
                Section {
                    Text("How much coffee do you drink per day?")
                        .font(.headline)
                    Stepper(coffeeAmount == 1 ? "1 Cup" : "\(coffeeAmount) Cups", value: $coffeeAmount)
                }
                // Sleep
                Section {
                    Text("How many hours do you want to sleep for?")
                        .font(.headline)
                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                }
                // Wakeup
                Section {
                    Text("When do you like to wake up?")
                        .font(.headline)
                    DatePicker("Select a wakeup time motherfucker", selection: $wakeUp, in: Date.now...)
                        .labelsHidden()
                }
                Section {
                    Text("Your ideal sleep time is \(result)")
                        .font(.title)
                }
                
            } // Form
            .foregroundColor(Color.black)
            .background(LinearGradient(gradient: Gradient(colors: [skyBlue, lemonYellow]), startPoint: .leading, endPoint: .bottom))
            .navigationTitle("Better Rest")
            
        } // Nav View
    }
    
    private func calcBedtime() {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)

            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            let sleepTime = wakeUp - prediction.actualSleep
            
            alertTitle = "Your ideal sleep time is..."
            alertMessage = sleepTime.formatted(date: .omitted, time: .shortened)
            showingAlert = true
        } catch {
            // something went wrong!
            alertTitle = "Error"
            alertMessage = "Sorry, there was a problem calculating your bedtime."
            showingAlert = true
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
