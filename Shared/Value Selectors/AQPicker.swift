//
//  AQPicker.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 27/01/21.
//

import SwiftUI

struct AQPicker: View {
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate
        case vanilla
        case strawberry

        var id: String { self.rawValue }
    }
    @State private var selectedFlavor = Flavor.chocolate
    var body: some View {
        Form {
            SectionView(title: "Toggle", description: "A control for selecting from a set of mutually exclusive values.",codeSample: ".DefaultToggleStyle") {
                Picker("Flavor", selection: $selectedFlavor) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }
                
            }
            Group {
                SectionView(title: "Toggle", description: "A control for selecting from a set of mutually exclusive values.",codeSample: ".pickerStyle(SegmentedPickerStyle())") {
                    Picker("Flavor", selection: $selectedFlavor) {
                        Text("Chocolate").tag(Flavor.chocolate)
                        Text("Vanilla").tag(Flavor.vanilla)
                        Text("Strawberry").tag(Flavor.strawberry)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                }
                #if os(OSX)
                SectionView(title: "Toggle", description: "A control for selecting from a set of mutually exclusive values.",codeSample: ".DefaultToggleStyle") {
                    Picker("Flavor", selection: $selectedFlavor) {
                        Text("Chocolate").tag(Flavor.chocolate)
                        Text("Vanilla").tag(Flavor.vanilla)
                        Text("Strawberry").tag(Flavor.strawberry)
                    }
                    .pickerStyle(RadioGroupPickerStyle())
                    
                }
                #endif
                #if os(iOS)
                SectionView(title: "Toggle", description: "A control for selecting from a set of mutually exclusive values.",codeSample: ".DefaultToggleStyle") {
                    Picker("Flavor", selection: $selectedFlavor) {
                        Text("Chocolate").tag(Flavor.chocolate)
                        Text("Vanilla").tag(Flavor.vanilla)
                        Text("Strawberry").tag(Flavor.strawberry)
                    }
                    .pickerStyle(WheelPickerStyle())

                }
                #endif

            }
        }
    }
}

struct AQPicker_Previews: PreviewProvider {
    static var previews: some View {
        AQPicker()
    }
}
