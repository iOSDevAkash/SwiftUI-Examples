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
            
        SectionView(title: ".leading", description: "multilineTextAlignment(.leading)", content: {
            Text("A font with the leading TextAlignment.A font with the leading TextAlignment.A font with the leading TextAlignment.A font with the leading TextAlignment")
                .multilineTextAlignment(.leading)
        })
        SectionView(title: ".center", description: "case .center", content: {
            Text("A font with the center TextAlignment.A font with the center TextAlignment.A font with the center TextAlignment.A font with the center TextAlignment")
                .multilineTextAlignment(.center)
        })
        SectionView(title: ".trailing", description: "case .trailing", content: {
            HStack{
                Text("A font with the trailing TextAlignment A font with the trailing TextAlignment A font with the trailing TextAlignment")
                    .multilineTextAlignment(.trailing)
            }
           
                
        })
        }
    }
}

struct AQTextAlignment_Previews: PreviewProvider {
    static var previews: some View {
        AQTextAlignment()
    }
}
