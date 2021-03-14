//
//  AQSlider.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 27/01/21.
//

import SwiftUI

struct AQSlider: View {
    @State private var speed = 50.0
    @State private var isEditing = false
    var body: some View {
        
        Form {
            SectionView(title: "Slider", description: "A control for selecting a value from a bounded linear range of values.",codeSample: ".DefaultToggleStyle") {
                VStack {
                    Slider(
                        value: $speed,
                        in: 0...100,
                        onEditingChanged: { editing in
                            isEditing = editing
                        }
                    )
                    Text("\(speed)")
                        .foregroundColor(isEditing ? .red : .blue)
                }
            }
            SectionView(title: "Slider", description: "A control for selecting a value from a bounded linear range of values.",codeSample: "Slider with Step 5") {
                VStack {
                    Slider(
                        value: $speed,
                        in: 0...100,
                        step: 5,
                        onEditingChanged: { editing in
                            isEditing = editing
                        },
                        minimumValueLabel: Text("0"),
                        maximumValueLabel: Text("100")
                    ) {
                        Text("Speed")
                    }
                }
            }
        }
    }
}
    struct AQSlider_Previews: PreviewProvider {
        static var previews: some View {
            AQSlider()
        }
    }
