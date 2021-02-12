//
//  AQLists.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 08/02/21.
//

import SwiftUI

struct AQLists: View {
    var body: some View {
        VStack {
            SectionView(title: "Lists", description: "A container that presents rows of data arranged in a single column.") {
                
                List {
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                }
                .listStyle(GroupedListStyle())
                
            }
            Text("This is using .listStyle(GroupedListStyle())")
                .font(.footnote)
            Spacer()
            Divider()
            
            SectionView(title: "InsetGroupedListStyle", description: "") {
                List {
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                }
                .listStyle(InsetGroupedListStyle())
            }
            Text("This is using .listStyle(InsetGroupedListStyle())")
                .font(.footnote)
            
        }
    }
}
struct AQLists_Previews: PreviewProvider {
    static var previews: some View {
        AQLists()
    }
}
