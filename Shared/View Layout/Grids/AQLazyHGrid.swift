//
//  AQLazyHGrid.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 29/01/21.
//

import SwiftUI

struct AQLazyHGrid: View {
    var rows: [GridItem] =
            Array(repeating: .init(.fixed(20)), count: 2)
    var body: some View {
        Form {
            SectionView(title: "LazyHGrid", description: "A container view that arranges its child views in a grid that grows horizontally, creating items only as needed.") {
                
                
                ScrollView(.horizontal) {
                    LazyHGrid(rows: rows, alignment: .top) {
                        ForEach((0...79), id: \.self) {
                            let codepoint = $0 + 0x1f600
                            let codepointString = String(format: "%02X", codepoint)
                            Text("\(codepointString)")
                                .font(.footnote)
                            let emoji = String(Character(UnicodeScalar(codepoint)!))
                            Text("\(emoji)")
                                .font(.largeTitle)
                        }
                    }.frame(width: .infinity, height: 80, alignment: .center)
                }
            }
        }
    }
}
struct AQLazyHGrid_Previews: PreviewProvider {
    static var previews: some View {
        AQLazyHGrid()
    }
}
