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
            SectionView(title: "ProgressView", description: "Loader is Linear in shape",topTitle: ".LinearProgressViewStyle") {
                VStack {
                    ProgressView(value: progress)
                        .progressViewStyle(LinearProgressViewStyle())
                }
                
            }
            SectionView(title: "ProgressView", description: "Loader is circular in shape",topTitle: ".CircularProgressViewStyle") {
                VStack {
                    ProgressView(value: progress)
                        .progressViewStyle(CircularProgressViewStyle())
                }
                
            }
            HStack{
                Button(action: {}, label: {
                    Text("More")
                })
                .onTapGesture {
                    progress += 0.05
                }
                Spacer()
                Button(action: {}, label: {
                    Text("Reduce")
                })
                .onTapGesture {
                    if progress <= 0 {
                        progress = 0
                    }else {
                        progress -= 0.05
                    }
                }
                Spacer()
                Button(action: {}, label: {
                    Text("Reset")
                })
                .onTapGesture {
                    progress = 0.00
                }
                
            }
        }
    }
}

struct AQProgressView_Previews: PreviewProvider {
    static var previews: some View {
        AQProgressView()
    }
}
