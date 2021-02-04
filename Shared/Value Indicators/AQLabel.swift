//
//  AQLabel.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 17/01/21.
//

import SwiftUI

struct AQLabel: View {
    var body: some View {
        Form {
            SectionView(title: "Label", description: "A standard label for user interface items, consisting of an icon with a title.") {
                VStack {
                    Label(text: "Label")
                }
            }
        }
    }
}

struct AQLabel_Previews: PreviewProvider {
    static var previews: some View {
        AQLabel()
    }
}
