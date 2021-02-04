//
//  DetailPane.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 08/01/21.
//

import SwiftUI

struct DetailPane: View {
    var body: some View {
        
        Form{
            Group {
                AQTextField()
                AQText()
                AQTextStyle()
                AQTextWithDate()
                AQTextTruncationMode()
                AQTextAlignment()
            }
            
            Group {
                AQImage()
                AQMenu()
                AQPicker()
                AQSlider()
                AQDatePicker()
                AQToggle()
                AQStepper()
                AQColorPicker()
                AQProgressView()
                AQLabel()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

struct DetailPane_Previews: PreviewProvider {
    static var previews: some View {
        DetailPane()
    }
}
