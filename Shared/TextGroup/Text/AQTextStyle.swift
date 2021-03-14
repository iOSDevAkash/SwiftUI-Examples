//
//  AQTextStyle.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 17/01/21.
//

import SwiftUI

struct AQTextStyle: View {
    var body: some View {
        Form{
            Group{
                SectionView(title: "strikethrough", description: "Applies a strikethrough to the text") {
                    Text("This Text is Striked")
                        .strikethrough()
                }
                SectionView(title: "strikethrough", description: "Applies a strikethrough to the text with color") {
                    Text("This Text is Striked")
                        .strikethrough(true, color: Color.red)
                }
                
            }
            Group{
                SectionView(title: "underline", description: "Applies a underline to the text") {
                    Text("This Text is underlined")
                        .underline()
                }
                SectionView(title: "underline", description: "Underline color can be changed using different init method") {
                    Text("This Text is underlined with red color")
                        .underline(true, color: Color.red)
                }
                
            }
            
            Group{
                SectionView(title: "tracking", description: """
                        Sets the tracking for the text.
                        Tracking adds space, measured in points, between the characters in the text view. A positive value increases the spacing between characters,
                        while a negative value brings the characters closer together
                        """) {
                    VStack(alignment: .leading) {
                        Text("ABCDEF  -3").tracking(-3)
                        Text("ABCDEF -0")
                        Text("ABCDEF 3").tracking(3)
                    }
                }
                
                SectionView(title: "kerning", description: """
                        Sets the kerning for the text.
                        Tracking adds space, measured in points, between the characters in the text view. A positive value increases the spacing between characters,
                        while a negative value brings the characters closer together
                        """) {
                    VStack(alignment: .leading) {
                        Text("ABCDEF").kerning(-3)
                        Text("ABCDEF")
                        Text("ABCDEF").kerning(3)
                    }
                }
                SectionView(title: "baselineOffset", description: """
                            Sets the vertical offset for the text relative to its baseline.
                        
                             Change the baseline offset to move the text in the view (in points) up
                             or down relative to its baseline. The bounds of the view expand to
                             contain the moved text.
                        """) {
                HStack(alignment: .top) {
                         Text("Hello")
                             .baselineOffset(-10)
                             .border(Color.red)
                         Text("Hello")
                             .border(Color.green)
                         Text("Hello")
                             .baselineOffset(10)
                             .border(Color.blue)
                     }
                     .background(Color(white: 0.9))
                }
                
            }
        }
    }
}

struct AQTextStyle_Previews: PreviewProvider {
    static var previews: some View {
        AQTextStyle()
    }
}
