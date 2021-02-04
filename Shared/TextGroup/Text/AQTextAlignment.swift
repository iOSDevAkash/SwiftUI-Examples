//
//  AQTextAlignment.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 17/01/21.
//

import SwiftUI

struct AQTextAlignment: View {
    var body: some View {
        Form{
        Text("Aligns the child view within its bounds given anchor types")
        SectionView(title: ".leading", description: "case .leading", content: {
            Text("A font with the leading TextAlignment")
                .frame(width: 100, height: 60)
                .multilineTextAlignment(.leading)
        })
        SectionView(title: ".center", description: "case .center", content: {
            Text("A font with the center TextAlignment")
                .frame(width: 100, height: 60)
                .multilineTextAlignment(.center)
        })
        SectionView(title: ".trailing", description: "case .trailing", content: {
            Text("A font with the trailing TextAlignment")
                .frame(width: 100, height: 60)
                .multilineTextAlignment(.trailing)
                
        })
        }
    }
}

struct AQTextAlignment_Previews: PreviewProvider {
    static var previews: some View {
        AQTextAlignment()
    }
}
