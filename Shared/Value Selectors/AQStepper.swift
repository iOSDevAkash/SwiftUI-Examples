//
//  AQStepper.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 27/01/21.
//

import SwiftUI

struct AQStepper: View {
    @State private var value = 0
    let colors: [Color] = [.orange, .red, .gray, .blue,
                           .green, .purple, .pink]
    
    func incrementStep() {
        value += 1
        if value >= colors.count { value = 0 }
    }
    
    func decrementStep() {
        value -= 1
        if value < 0 { value = colors.count - 1 }
    }
    
    @State private var items = 0
    let step = 5
    let range = 1...50
    
    
    var body: some View {
        Form {
            SectionView(title: "Stepper", description: "A control that performs increment and decrement actions.",topTitle: ".DefaultToggleStyle") {
                Stepper(onIncrement: incrementStep,
                        onDecrement: decrementStep) {
                    Text("Value: \(value) Color: \(colors[value].description)")
                }
                .padding(5)
                .background(colors[value])
            }
            SectionView(title: "Stepper", description: "A control that performs increment and decrement actions.",topTitle: ".DefaultToggleStyle") {
                VStack{
                    Stepper(value: $items,
                            in: range,
                            step: step) {
                        Text("Current: \(items)")
                    }
                    .padding(10)
                    Text("\(range.description) " +
                            "stepping by \(step)")
                }
            }
        }
    }
}

struct AQStepper_Previews: PreviewProvider {
    static var previews: some View {
        AQStepper()
    }
}
