//
//  AQSpacer.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 29/01/21.
//

import SwiftUI

struct AQSpacer: View {
    var body: some View {
        Form {
            SectionView(title: "Spacer", description: "A flexible space that expands along the major axis of its containing stack layout, or on both axes if not contained in a stack.") {
                VStack {
                    HStack {
                        Image(systemName: "clock")
                        Spacer()
                        Text("Time")
                    }.padding()
                    Text("Spacer is in between Time and Clock image")
                        .font(.footnote)
                    
                    Divider()
                    HStack {
                        Image(systemName: "clock")
                        Text("Time")
                        Spacer()
                    }.padding()
                    Text("Spacer is at the end pushing both clock and Time to left")
                        .font(.footnote)
                    Spacer()
                    Divider()
                    HStack {
                        Spacer()
                        Image(systemName: "clock")
                        Text("Time")
                        
                    }.padding()
                    Text("Spacer is at the start pushing both clock and Time to Right")
                        .font(.footnote)
                    Spacer()
                }
                
            }
        }
    }
}

struct AQSpacer_Previews: PreviewProvider {
    static var previews: some View {
        AQSpacer()
    }
}
