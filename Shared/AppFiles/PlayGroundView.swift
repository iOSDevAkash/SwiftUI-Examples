//
//  PlayGroundView.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 27/01/21.
//

import SwiftUI

struct PlayGroundView: View {
    @State private var isShowingDetailView = false
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Text("Second View"), isActive: $isShowingDetailView) { Text("asdasdad") }
                Button("Tap to show detail") {
                    self.isShowingDetailView = true
                }
             
                NavigationLink(destination: Text("first View"), isActive: $isShowingDetailView) { EmptyView() }
                Button("Tap to show detail") {
                    self.isShowingDetailView = true
                }
                .navigationBarTitle("first View")
            }
            
        }
    }
}

struct PlayGroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlayGroundView()
    }
}

