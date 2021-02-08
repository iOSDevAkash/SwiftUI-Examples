//
//  AQGroupBox.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 07/02/21.
//

import SwiftUI

struct AQGroupBox: View {
    @State var username: String = ""
    @State var isPrivate: Bool = true
    @State var notificationsEnabled: Bool = false
    @State private var previewIndex = 0
    var body: some View {
        SectionView(title: "Group Box", description: "A stylized view with an optional label that is associated with a logical grouping of content.") {
            
            
            Form {
                GroupBox {
                    TextField("Username", text: $username)
                    Toggle(isOn: $isPrivate) {
                        Text("Private Account")
                    }
                    Text("default groupBox ")
                        .font(.footnote)
                }
                
                GroupBox(label: Text("Label"), content: {
                    
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Enabled")
                    }
                    Text("groupBox with label")
                        .font(.footnote)
                    
                })
                
                GroupBox {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("2.2.1")
                    }
                }
                
                GroupBox {
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


struct AQGroupBox_Previews: PreviewProvider {
    static var previews: some View {
        AQGroupBox()
    }
}
