//
//  AQHome.swift
//  AQCoreSwiftUIKit
//
//  Created by Akash Yashavanthrao Shindhe on 01/02/21.
//

import SwiftUI

struct AQHome: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        Text("Views and Controls")
                    })
                NavigationLink(
                    destination: AQViewLayout(),
                    label: {
                        Text("View Layout and Presentation")
                    })
                NavigationLink(
                    destination: AQShapes(),
                    label: {
                        Text("Drawing and Animation")
                    })
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Text("Others")
                    })
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}


struct AQHome_Previews: PreviewProvider {
    static var previews: some View {
        AQHome()
    }
}
