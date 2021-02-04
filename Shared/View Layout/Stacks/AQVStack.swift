//
//  AQVStack.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 29/01/21.
//

import SwiftUI

struct AQVStack: View {
    var body: some View {
        Form {
            SectionView(title: "VStack", description: "A view that arranges its children in a vertical  line.") {
                
                VStack (alignment: .center, spacing: 5){
                    Circle()
                    Circle()
                    Circle()
                    Circle()
                    
                }
            }
            SectionView(title: "LazyVStack", description: "Same as VStack but  items are created only as needed.") {
                ScrollView {
                    LazyVStack(alignment: .leading,spacing: 5) {
                        ForEach(1...100, id: \.self) {
                            Text("⚫️ \($0)")
                        }
                    }
                }.frame(width: .infinity, height: 100, alignment: .center)
            }
        }
    }
}

struct AQVStack_Previews: PreviewProvider {
    static var previews: some View {
        AQVStack()
    }
}
