//
//  DrawingAndAnimationHome.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 13/02/21.
//

import SwiftUI

struct DrawingAndAnimationHome: View {
    var body: some View {
        Form{
            List {
                Section(header: Text("Shapes")) {
                    let value = Type.TextField
                    NavigationLink(destination: AQShapes()) {
                        HStack{
                            
                            Image(systemName:value.Image)
                            Text("Shapes")
                        }
                    }
                    
                }
                Section(header: Text("Animations")) {
                    let value = Type.TextField
                    NavigationLink(destination: AQAnimations()) {
                        HStack{
                            
                            Image(systemName:value.Image)
                            Text("Basic Animations")
                        }
                    }
                    
                }
            }
        }
    }
}

struct DrawingAndAnimationHome_Previews: PreviewProvider {
    static var previews: some View {
        DrawingAndAnimationHome()
    }
}
