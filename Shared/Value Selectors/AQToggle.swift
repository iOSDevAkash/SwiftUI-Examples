//
//  AQToggle.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 26/01/21.
//

import SwiftUI

struct AQToggle: View {
    @State private var vibrateOnRing = false
    var body: some View {
        Form {
            SectionView(title: "Toggle", description: "A control that toggles between on and off states.",topTitle: ".DefaultToggleStyle") {
                Toggle(isOn: $vibrateOnRing, label: {
                    Text("Vibrate on Ring")
                })
                .toggleStyle(DefaultToggleStyle())
            }
            
            SectionView(title: "Toggle", description: "A control that toggles between on and off states.",topTitle: ".SwitchToggleStyle") {
                Toggle(isOn: $vibrateOnRing, label: {
                    Text("Vibrate on Ring")
                })
                .toggleStyle(SwitchToggleStyle())
            }
            #if os(OSX)
            SectionView(title: "Toggle", description: "A control that toggles between on and off states.",topTitle: ".CheckboxToggleStyle") {
                Toggle(isOn: $vibrateOnRing, label: {
                    Text("Vibrate on Ring")
                })
                .toggleStyle(CheckboxToggleStyle())
            }
            #endif
            
        }
        
    }
}

struct AQToggle_Previews: PreviewProvider {
    static var previews: some View {
        AQToggle()
    }
}
