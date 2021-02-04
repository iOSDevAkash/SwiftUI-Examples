//
//  AQLinks.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 26/01/21.
//

import SwiftUI

struct AQLinks: View {
    var body: some View {
        SectionView(title: "Link", description: "A control for navigating to a URL.", content: {
                        Link("View Our Terms of Service", destination: URL(string: "https://www.example.com/TOS.html")!)
            
        })
        
    }
}

struct AQLinks_Previews: PreviewProvider {
    static var previews: some View {
        AQLinks()
            .previewDevice("iPhone 8")
    }
}
