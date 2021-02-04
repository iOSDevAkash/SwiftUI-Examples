//
//  AQHStack.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 29/01/21.
//

import SwiftUI

struct AQHStack: View {
    var body: some View {
        Form {
            SectionView(title: "HStack", description: "A view that arranges its children in a horizontal line.") {
                
                HStack (alignment: .center, spacing: 5){
                    Circle()
                    Circle()
                    Circle()
                    Circle()
                    
                }
            }
            SectionView(title: "LazyHStack", description: "Same as HStack but  items are created only as needed.") {
                ScrollView(.horizontal) {
                    LazyHStack(alignment: .center, spacing: 10) {
                        ForEach(1...100, id: \.self) {
                            
                            Circle()
                            Text("\($0)")
                        }
                    }
                }
            }
            
        }
    }
}

struct AQHStack_Previews: PreviewProvider {
    static var previews: some View {
        AQHStack()
    }
}
