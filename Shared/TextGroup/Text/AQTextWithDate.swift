//
//  AQTextWithDate.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 17/01/21.
//

import SwiftUI

struct AQTextWithDate: View {
    var body: some View {
        Form{
            LabelHeader(text: "Text with Date")
            SectionView(title: ".date", description: "A style displaying a date.", content: {
                Text(Date(), style: .date)
            })
            SectionView(title: ".time", description: "A style displaying only the time component for a date.", content: {
                Text(Date(), style: .time)
            })
            SectionView(title: ".relative", description: "A style displaying a date as relative to now. EX: 2 sec ago", content: {
                Text(Date(), style: .relative)
            })
            
            SectionView(title: ".offset", description: "A style displaying a date as offset from now . EX: +1 hours", content: {
                Text(Date(), style: .offset)
            })
            SectionView(title: ".timer", description: "A style displaying only the time component for a date.", content: {
                Text(Date(), style: .timer)
            })
        }
    }
}

struct AQTextWithDate_Previews: PreviewProvider {
    static var previews: some View {
        AQTextWithDate()
    }
}
