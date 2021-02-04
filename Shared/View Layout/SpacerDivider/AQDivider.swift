//
//  AQDivider.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 29/01/21.
//

import SwiftUI

struct AQDivider: View {
    var body: some View {
        Form {
            SectionView(title: "Divider", description: "A visual element that can be used to separate other content.") {
                VStack {
                    VStack {
                        Image(systemName: "clock")
                        Divider()
                        Text("Time")
                    }.padding()
                    Text("Divider is in between Time and Clock image in VStack")
                        .font(.footnote)
                    
                    Divider()
                    HStack {
                        Image(systemName: "clock")
                        Text("Time")
                        Divider()
                    }.padding()
                    Text("Divider is at the end pushing both clock and Time to left")
                        .font(.footnote)
                    Spacer()
                    Divider()
                    HStack {
                        Divider()
                        Image(systemName: "clock")
                        Text("Time")
                        
                    }.padding()
                    Text("Divider is at the start pushing both clock and Time to Right")
                        .font(.footnote)
                    Divider()
                }
                
            }
        }
    }
}

struct AQDivider_Previews: PreviewProvider {
    static var previews: some View {
        AQDivider()
    }
}
