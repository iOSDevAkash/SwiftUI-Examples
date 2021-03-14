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
                        CardView(floatingElements: ["Text","Text Style","Alignment","Date","Truncation","TextEditor","TextField","Image","Buttons","Link","Menu","Slider","DatePicker"], title: "Views and Controls", image: "star")
                    })
                NavigationLink(
                    destination: AQViewLayout(),
                    label: {
                        CardView(floatingElements: ["Alert","Spacer","Divider","Hstack","VStack","ZStack","LazyHGrid","LazyVGrid","Forms","Form with Groups","GroupBox","Sections","List","ScrolView"], title: "View Layout and Presentation", image: "star")
                        
                    })
                NavigationLink(
                    destination: DrawingAndAnimationHome(),
                    label: {
                        CardView(floatingElements: ["Shapes","Animations"], title: "Drawing and Animation", image: "star")
                        
                    })
                
            }.navigationTitle("Hello SwiftUI")
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct CardView: View {
    var floatingElements:[String]
    var title:String
    var image:String
    var body: some View {
        VStack{
            
            HStack{
                Image(systemName: image)
                    .padding()
                    .background(Color.orange)
                    .clipShape(Circle())
                    .font(.footnote)
                Text(title)
                    .font(.title)
                Spacer()
            }
            VStack{
                
                ScrollView(.horizontal, showsIndicators: true, content: {
                    HStack{
                        ForEach(floatingElements, id: \.self) { item in
                            Text(item)
                            Image(systemName: "star.fill")
                                .font(.footnote)
                                .foregroundColor(.orange)
                        }
                    }
                })
            }
            
            
        }
        
    }
}

struct AQHome_Previews: PreviewProvider {
    static var previews: some View {
        AQHome()
    }
}
