//
//  AQSection.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 07/02/21.
//

import SwiftUI

struct AQSection: View {
    @State var username: String = ""
    @State var isPrivate: Bool = true
    @State var notificationsEnabled: Bool = false
    @State private var previewIndex = 0
    var body: some View {
        SectionView(title: "Form", description: "A container for grouping controls used for data entry, such as in settings or inspectors.") {
            
            
            Form {
                Section(header: Text("This is header")) {
                    TextField("Username", text: $username)
                    Toggle(isOn: $isPrivate) {
                        Text("Private Account")
                    }
                    Text("Section with only header")
                        .font(.footnote)
                }
                
                Section(header: Text("This is header"), footer: Text("This is footer"), content: {
                    
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Enabled")
                    }
                    Text("Section with header and footer")
                        .font(.footnote)
                    
                })
                
                Section(footer: Text("This is footer")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("2.2.1")
                    }
                    Text("Section with only footer")
                        .font(.footnote)
                }
                
                Section {
                    Button(action: {
                        print("Perform an action here...")
                    }) {
                        Text("Reset All Settings")
                    }
                    Text("Section with no footer no header")
                        .font(.footnote)
                }
                Section(footer: HStack{
                    Image(systemName: "network")
                    Text("You can add image too or any views inside header and footer")
                }) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("2.2.1")
                    }
                    Text("Section with only footer")
                        .font(.footnote)
                }
            }
            .navigationBarTitle("Form")
        }
        
    }
}


struct AQSection_Previews: PreviewProvider {
    static var previews: some View {
        AQSection()
    }
}
