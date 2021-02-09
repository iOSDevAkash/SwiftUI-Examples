//
//  AQShapes.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 02/02/21.
//

import SwiftUI

struct AQShapes: View {
    var body: some View {
        Form {
            SectionView(title: "Rectangle", description: "A rectangular shape aligned inside the frame of the view containing it.") {
                Rectangle()
            }
            SectionView(title: "RoundedRectangle", description: "A rectangular shape with rounded corners, aligned inside the frame of the view containing it.") {
                VStack{
                    RoundedRectangle(cornerRadius:100.0 ,style: RoundedCornerStyle.circular)
                    Text("RoundedCornerStyle.circular")
                        .font(.footnote)
                    RoundedRectangle(cornerRadius:100 ,style: RoundedCornerStyle.continuous)
                    Text("RoundedCornerStyle.continuous")
                        .font(.footnote)
                
                }.frame(width: .infinity, height: 200, alignment: .center)
            }
            SectionView(title: "Circle", description: "A circle centered on the frame of the view containing it.") {
                Circle()
            }
            SectionView(title: "Ellipse", description: "An ellipse aligned inside the frame of the view containing it.") {
                Ellipse()
                    .frame(width: .infinity, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            SectionView(title: "Capsule", description: "A capsule shape is equivalent to a rounded rectangle where the corner radius is chosen as half the length of the rectangle’s smallest edge.") {
                VStack{
                    Capsule(style: RoundedCornerStyle.circular)
                    Text("RoundedCornerStyle.circular")
                        .font(.footnote)
                    Capsule(style: RoundedCornerStyle.continuous)
                    Text("RoundedCornerStyle.continuous")
                        .font(.footnote)
                
                }.frame(width: .infinity, height: 200)
            }
            
        }
    }
}

struct AQShapes_Previews: PreviewProvider {
    static var previews: some View {
        AQShapes()
    }
}
