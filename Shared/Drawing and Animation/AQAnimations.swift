//
//  AQAnimations.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 10/02/21.
//

import SwiftUI

struct AQAnimations: View {
    @State private var scale: CGFloat = 1
    @State private var scale2: CGFloat = 1
    @State private var scale3: CGFloat = 1
    @State private var scale4: CGFloat = 1
    
    var body: some View {
        VStack{
            Button("Press here") {
                scale += 0.5
            }
            .padding(60)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(scale)
            .animation(.linear(duration: 1))
            HStack {
                Button("Press here") {}
                    .padding(60)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .scaleEffect(scale2)
                    .animation(.easeIn)
                    .onTapGesture {
                        scale += 1
                    }
                Button("Press here") {}
                    .padding(60)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .scaleEffect(scale3)
                    .animation(.easeOut)
                    .onTapGesture {
                        scale += 1
                    }
                Button("Press here") {}
                    .padding(60)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .scaleEffect(scale4)
                    .animation(.easeInOut)
                    .onTapGesture {
                        scale += 1
                    }
            }
            
        }
    }
}

struct AQAnimations_Previews: PreviewProvider {
    static var previews: some View {
        AQAnimations()
    }
}
