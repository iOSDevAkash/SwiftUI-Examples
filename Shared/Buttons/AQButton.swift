//
//  AQButton.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 26/01/21.
//

import SwiftUI

struct AQButton: View {
    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]
    var body: some View {
        Form{
            SectionView(title: "Button", description: "A control that performs an action when triggered.",codeSample: "Default") {
                Button("Sign In", action: {})
            }
            Section {
                SectionView(title: "Button", description: "A control that performs an action when triggered.",codeSample: ".DefaultButtonStyle") {
                    Button("Sign In", action: {})
                        .buttonStyle(DefaultButtonStyle())
                }
                SectionView(title: "Button", description: "A control that performs an action when triggered.",codeSample: ".PlainButtonStyle") {
                    Button("Sign In", action: {})
                        .buttonStyle(PlainButtonStyle())
                }
                #if os(OSX)
                SectionView(title: "Button", description: "A control that performs an action when triggered.",codeSample: ".BorderedButtonStyle") {
                    Button("Sign In", action: {})
                        .buttonStyle(BorderedButtonStyle())
                }
                #endif
                SectionView(title: "Button", description: "A control that performs an action when triggered.",codeSample: ".BorderlessButtonStyle") {
                    Button("Sign In", action: {})
                        .buttonStyle(BorderlessButtonStyle())
                }
                #if os(tvOS)
                SectionView(title: "Button", description: "A control that performs an action when triggered.",codeSample: ".BorderedButtonStyle") {
                    Button("Sign In", action: {})
                        .buttonStyle(CardButtonStyle())
                }
                #endif
            }
            
//            Section{
//                NavigationView{
//                    List {
//                        ForEach(
//                            fruits,
//                            id: \.self
//                        ) { fruit in
//                            Text(fruit)
//                        }
//                        .onDelete { self.deleteFruit(at :$0) }
//                        .onMove { self.moveFruit(from: $0, to: $1) }
//                    }
//                    .navigationTitle("Fruits")
//                    .toolbar { EditButton() }
//                }
//            }
        }
    }
}

struct AQButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AQButton()
        }
    }
}
