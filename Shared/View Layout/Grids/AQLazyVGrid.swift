//
//  AQLazyVGrid.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 29/01/21.
//

import SwiftUI

struct AQLazyVGrid: View {
    var columns: [GridItem] =
        Array(repeating: .init(.flexible()), count: 2)
    var body: some View {
        Form {
            SectionView(title: "LazyVGrid", description: "A container view that arranges its child views in a grid that grows vertically, creating items only as needed.") {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach((0...79), id: \.self) {
                            let codepoint = $0 + 0x1f600
                            let codepointString = String(format: "%02X", codepoint)
                            Text("\(codepointString)")
                            let emoji = String(Character(UnicodeScalar(codepoint)!))
                            Text("\(emoji)")
                        }
                    }.font(.largeTitle)
                }.frame(width: .infinity, height: 200, alignment: .center)
            }
        }
    }
}
struct AQLazyVGrid_Previews: PreviewProvider {
    static var previews: some View {
        AQLazyVGrid()
    }
}
