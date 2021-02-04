//
//  AQZStack.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 29/01/21.
//

import SwiftUI

struct AQZStack: View {
    var body: some View {
        Form {
            SectionView(title: "ZStack", description: "A view that overlays its children, aligning them in both axes.") {
                
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                    Rectangle()
                        .foregroundColor(.clear)
                        .border(Color.black)
                }
            }
        }
    }
}


struct AQZStack_Previews: PreviewProvider {
    static var previews: some View {
        AQZStack()
    }
}
