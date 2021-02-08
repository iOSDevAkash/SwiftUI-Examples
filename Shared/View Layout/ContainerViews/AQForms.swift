//
//  AQForms.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 07/02/21.
//

import SwiftUI

struct AQForms: View {
    @State var username: String = ""
    @State var isPrivate: Bool = true
    @State var notificationsEnabled: Bool = false
    @State private var previewIndex = 0
    
    var body: some View {
        SectionView(title: "Form", description: "A container for grouping controls used for data entry, such as in settings or inspectors.") {
            
            
            Form {
                Section(header: Text("PROFILE")) {
                    TextField("Username", text: $username)
                    Toggle(isOn: $isPrivate) {
                        Text("Private Account")
                    }
                }
                
                Section(header: Text("NOTIFICATIONS")) {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Enabled")
                    }
                }
                
                Section(header: Text("ABOUT")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("2.2.1")
                    }
                }
                
                Section {
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


struct AQForms_Previews: PreviewProvider {
    static var previews: some View {
        AQForms()
    }
}
