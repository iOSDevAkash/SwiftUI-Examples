//
//  AQTextField.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 17/01/21.
//

import SwiftUI

struct AQTextField: View {
    @State var name: String = "Click Here"
    var body: some View {
        Form {
            SectionView(title: "TextField", description: "A control that displays an editable text interface. ", content: {
                TextField("PlaceHolder", text: $name)
                    .foregroundColor(.blue)
            })
            SectionView(title: "RoundedBorderTextFieldStyle", description: "A text field style with a system-defined rounded border. ", content: {
                TextField("PlaceHolder", text: $name)
                    .foregroundColor(.blue)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            })
            #if os(OSX)
            SectionView(title: "SquareBorderTextFieldStyle", description: "A text field style with a system-defined Square border. ", content: {
                TextField("PlaceHolder", text: $name)
                    .foregroundColor(.blue)
                    .textFieldStyle(SquareBorderTextFieldStyle())
            })
            #endif
            SectionView(title: "DefaultTextFieldStyle", description: "A control that displays an editable text interface. It changes on OSX and iOS ", content: {
                TextField("PlaceHolder", text: $name)
                    .foregroundColor(.blue)
                    .textFieldStyle(DefaultTextFieldStyle())
            })
            
        }
    }
    
}

struct AQTextField_Previews: PreviewProvider {
    static var previews: some View {
        AQTextField()
    }
}
