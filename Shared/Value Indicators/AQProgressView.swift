//
//  AQProgressView.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 26/01/21.
//

import SwiftUI

struct AQProgressView: View {
    @State private var progress = 0.5
    var body: some View {
        Form{
            SectionView(title: "ProgressView", description: "A view that shows the progress towards completion of a task.",topTitle: ".DefaultProgressViewStyle") {
                VStack {
                    ProgressView(value: progress)
                        .progressViewStyle(DefaultProgressViewStyle())
                }
                
            }
            SectionView(title: "ProgressView", description: "A view that shows the progress towards completion of a task.",topTitle: ".LinearProgressViewStyle") {
                VStack {
                    ProgressView(value: progress)
                        .progressViewStyle(LinearProgressViewStyle())
                }
                
            }
            SectionView(title: "ProgressView", description: "A view that shows the progress towards completion of a task.",topTitle: ".LinearProgressViewStyle") {
                VStack {
                    ProgressView(value: progress)
                        .progressViewStyle(CircularProgressViewStyle())
                }
                
            }
            HStack{
            Button("More", action: { progress += 0.05 })
            Button("Reset", action: { progress = 0.00 })
            }
        }
    }
}

struct AQProgressView_Previews: PreviewProvider {
    static var previews: some View {
        AQProgressView()
    }
}
