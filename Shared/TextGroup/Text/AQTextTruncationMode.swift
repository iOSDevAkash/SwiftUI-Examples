//
//  AQTextTruncationMode.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 17/01/21.
//

import SwiftUI

struct AQTextTruncationMode: View {
    var body: some View {
        Form{
            SectionView(title: "TruncationMode", description: "The type of truncation to apply to a line of text when it's too long to fit in the available space.", content: {
                Text("Text here has been truncated")
                    .frame(width: 100, height: 30, alignment: .center)
                    .truncationMode(.tail)
            })
            SectionView(title: "head", description: "Use this kind of truncation to omit characters from the beginning of the String ", content: {
                Text("Text here has been truncated")
                    .frame(width: 100, height: 30, alignment: .center)
                    .truncationMode(.head)
            })
            SectionView(title: "tail", description: "Use this kind of truncation to omit characters from the end of the String ", content: {
                Text("Text here has been truncated")
                    .frame(width: 100, height: 30, alignment: .center)
                    .truncationMode(.tail)
            })
            SectionView(title: "middle", description: "Use this kind of truncation to omit characters from the middle of the String ", content: {
                Text("Text here has been truncated")
                    .frame(width: 100, height: 30, alignment: .center)
                    .truncationMode(.middle)
            })
            SectionView(title: "allowsTightening", description: "Sets whether text in this view can compress the space between characters when necessary to fit text in a line.change the screen size to test ", content: {
                VStack {
                    Text("This is a wide text element")
                        .font(.body)
                        .frame(width: 200, height: 50, alignment: .leading)
                        .lineLimit(1)
                        .allowsTightening(true)

                    Text("This is a wide text element")
                        .font(.body)
                        .frame(width: 200, height: 50, alignment: .leading)
                        .lineLimit(1)
                        .allowsTightening(false)
                }
            })
            SectionView(title: "minimumScaleFactor", description: "Sets the minimum amount that text in this view scales down to fit in the available space.change the screen size to test ", content: {
                HStack {
                    Text("This is a long label that will be scaled to fit:")
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                }
            })
            SectionView(title: "uppercase", description: "A scheme for transforming the capitalization of characters within text. ", content: {
                Text("Text here has been uppercased")
                    .textCase(.uppercase)
            })
            SectionView(title: "middle", description: "Use this kind of truncation to omit characters from the middle of the String ", content: {
                Text("Text here has been lowercased")
                    .textCase(.lowercase)
            })
            
            
        }
    }
}

struct AQTextTruncationMode_Previews: PreviewProvider {
    static var previews: some View {
        AQTextTruncationMode()
    }
}
