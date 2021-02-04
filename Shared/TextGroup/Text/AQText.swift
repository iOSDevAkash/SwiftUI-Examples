//
//  AQText.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 16/01/21.
//

import SwiftUI

struct AQText: View {
    var body: some View {
     
            Form {
                
                SectionView(title: "Text", description: "Creates a text view that displays a string literal without localization") {
                    
                    Text("Your Text Here")
                }
                
                SectionView(title: "ForegroundColor", description: "Setting the color of the text displayed by this view.") {
                    VStack {
                        Text("Red").foregroundColor(.red)
                        Text("Green").foregroundColor(.green)
                        Text("Blue").foregroundColor(.blue)
                    }
                }
                Group {
                    Text("Font Styles")
                        .font(.headline)
                    Group{
                        SectionView(title: ".largeTitle", description: "case .largeTitle", content: {
                            Text("A font with the large title text style.")
                                .font(.largeTitle)
                        })
                        SectionView(title: ".title", description: "case .title", content: {
                            Text("A font with the title text style.")
                                .font(.title)
                        })
                        SectionView(title: ".title2", description: "case .title2", content: {
                            Text("A font with the title2 text style.")
                                .font(.title2)
                        })
                        SectionView(title: ".title3", description: "case .title3", content: {
                            Text("A font with the title text style.")
                                .font(.title3)
                        })
                        SectionView(title: ".title", description: "case .title", content: {
                            Text("A font with the title text style.")
                                .font(.title)
                        })
                    }
                    
                    
                    
                    Group{
                        SectionView(title: ".headline", description: "case .headline", content: {
                            Text("A font with the headline text style.")
                                .font(.headline)
                        })
                        SectionView(title: ".subheadline", description: "case .subheadline", content: {
                            Text("A font with the subheadline text style.")
                                .font(.subheadline)
                        })
                    }
                    
                    Group{
                        SectionView(title: ".body", description: "case .body", content: {
                            Text("A font with the body text style.")
                                .font(.body)
                        })
                    }
                    
                    Group{
                        SectionView(title: ".callout", description: "case .callout", content: {
                            Text("A font with the callout text style.")
                                .font(.callout)
                        })
                        SectionView(title: ".footnote", description: "case .footnote", content: {
                            Text("A font with the footnote text style.")
                                .font(.footnote)
                        })
                        SectionView(title: ".caption", description: "case .caption", content: {
                            Text("A font with the caption text style.")
                                .font(.caption)
                        })
                    }
                }
                Group{
                    SectionView(title: "fontWeight", description: "Sets the font weight of the text.", topTitle: ".bold") {
                        Text("This Text has font weight Bold.")
                            .fontWeight(.bold)
                    }
                    SectionView(title: "italic", description: "Sets the font italic.", topTitle: ".italic") {
                        Text("This is italic Text.")
                            .italic()
                        
                    }
                }
               
                
            }
            
           
        }
        
    }
    
    


struct AQText_Previews: PreviewProvider {
    static var previews: some View {
        AQText()
    }
}

struct Label: View {
    var text:String
    var body: some View {
        Text(text.capitalized)
            .bold()
            .font(.title)
        
    }
}

struct LabelHeader: View {
    var text:String
    var body: some View {
        Text(text.capitalized)
            .bold()
            .font(.callout)
            .foregroundColor(.blue)
    }
}


