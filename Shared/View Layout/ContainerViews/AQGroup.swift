//
//  AQGroup.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 07/02/21.
//

import SwiftUI

struct AQGroup: View {
    @State var username: String = ""
    @State var isPrivate: Bool = true
    @State var notificationsEnabled: Bool = false
    @State private var previewIndex = 0
    
    var body: some View {
        SectionView(title: "Form", description: "A container for grouping controls used for data entry, such as in settings or inspectors.") {
            
            
            Form {
                Group {
                    TextField("Username", text: $username)
                    Toggle(isOn: $isPrivate) {
                        Text("Private Account")
                    }
                }
                
                Group {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Enabled")
                    }
                }
                
                Group {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("2.2.1")
                    }
                }
                
                Group {
                    Button(action: {
                        print("Perform an action here...")
                    }) {
                        Text("Reset All Settings")
                    }
                }
            }
            .navigationBarTitle("Form")
        }
    }
}
struct AQGroup_Previews: PreviewProvider {
    static var previews: some View {
        AQGroup()
    }
}
