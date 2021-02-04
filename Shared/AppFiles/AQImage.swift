//
//  AQImage.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 20/01/21.
//

import SwiftUI

struct AQImage: View {
    var body: some View {
        List{
            SectionView(title: "Image", description: "A view that displays an environment-dependent image. ", content: {
                Image(systemName: "network")
            })
            SectionView(title: "Resizable Image", description: "A image with 50,50 ", content: {
                Image(systemName: "network")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
            })
            SectionView(title: "Resizable Image", description: "A image with foreground color blue ", content: {
                Image(systemName: "network")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(.blue)
            })
            SectionView(title: "scaleEffect", description: "A image with scaleEffect 1.5", content: {
                Image(systemName: "network")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(.blue)
                    .scaleEffect(1.5)
            })
            
            SectionView(
                title: "Image",
                description: "A view that displays an environment-dependent image.",
                content: {
                    Image("Waterfall")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxHeight: 128)
                }
            )
            
            SectionView(
                title: "System Images",
                description: "Built-in icons that represent common tasks and types of content in a variety of use cases. The full list of icons is available in the SF Symbols app.",
                content: {
                    Group {
                        Image(systemName: "memories.badge.plus")
                            // This modifier lets you use the new multi-color system icons in SF Symbols 2
                            .renderingMode(.original)
                        Image(systemName: "memories.badge.plus")
                    }
                }
            )
            
            
            
            
        }
    }
}

struct AQImage_Previews: PreviewProvider {
    static var previews: some View {
        AQImage()
    }
}
