//
//  topBar.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 12/01/21.
//

import SwiftUI

struct topBar: View {
    var body: some View {
        HStack{
            ZStack{
                Image(systemName: "desktopcomputer")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50, alignment: .center)
                    .padding()
                Text("Local")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .bold()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            ZStack{
                Image(systemName: "network")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60, alignment: .center)
                    .padding()
                Text("Git")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .bold()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .zIndex(6.0)
        }.frame( maxWidth: .infinity, maxHeight: 60)
        
    }
}

struct topBar_Previews: PreviewProvider {
    static var previews: some View {
        topBar()
    }
}
