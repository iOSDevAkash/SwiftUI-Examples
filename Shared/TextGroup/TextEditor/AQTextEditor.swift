//
//  AQTextEditor.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 20/01/21.
//

import SwiftUI

struct AQTextEditor: View {
    @State private var fullText: String = "This is some editable text..."
    var body: some View {
        Form{
            SectionView(title: "TextEditor", description: "A view that can display and edit long-form text. ", content: {
                TextEditor(text: $fullText)
            })
        }
    }
}

struct AQTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        AQTextEditor()
    }
}
