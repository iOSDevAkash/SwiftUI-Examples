//
//  AQColorPicker.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 27/01/21.
//

import SwiftUI

struct AQColorPicker: View {
    @State private var bgColor =
        Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    var body: some View {
        Form {
            SectionView(title: "Toggle", description: "A control that toggles between on and off states.",codeSample: ".DefaultToggleStyle") {
                VStack {
                    ColorPicker("Color", selection: $bgColor)
                }
            }
            
        }
    }
}

struct AQColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        AQColorPicker()
    }
}
