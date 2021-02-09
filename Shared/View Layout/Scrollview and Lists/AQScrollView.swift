//
//  AQScrollView.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 09/02/21.
//

import SwiftUI

struct AQScrollView: View {
    var body: some View {
        Form{
            SectionView(title: "ScrollView", description: "A container that presents rows of data arranged in a single column.") {
                ScrollView(.vertical, showsIndicators: true, content: {
                    Text("Placeholder")
                    Text("Placeholder")
                    Text("Placeholder")
                    Text("Placeholder")
                })
                
            }
            SectionView(title: "ScrollView", description: "A scrollview with horizontal scroll") {
                ScrollView(.horizontal, showsIndicators: true, content: {
                    HStack{
                    Text("Placeholder")
                    Text("Placeholder")
                    Text("Placeholder")
                    Text("Placeholder")
                    }
                })
                
            }
        }
    }
}
struct AQScrollView_Previews: PreviewProvider {
    static var previews: some View {
        AQScrollView()
    }
}
