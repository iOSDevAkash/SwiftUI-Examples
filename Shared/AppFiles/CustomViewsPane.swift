//
//  CustomViewsPane.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 08/01/21.
//

import SwiftUI

struct CustomViewsPane: View {
    var items:[customItem]
    var body: some View {
        VStack{
            HStack{
                Button(action: {}, label: {
                    HStack{
                        Image(systemName: "desktopcomputer")
                        Text("Local")
                    }
                    
                })
                Button(action: {}, label: {
                    HStack{
                        Image(systemName: "network")
                        Text("Web")
                    }
                })
            }.frame( idealWidth: 250, maxWidth: 250, maxHeight: 60)
            Divider()
            Spacer()
            List(items){ i in
                HStack{
                    Image(systemName: i.image ?? "face.dashed")
                    Text(i.name ?? "Unknown")
                }
                .onHover(perform: { hovering in
                    
                })
            }.frame( idealWidth: 250, maxWidth: 250, maxHeight: .infinity)
        }.frame( idealWidth: 250, maxWidth: 250, maxHeight: .infinity)
    }
}

//struct CustomViewsPane_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomViewsPane()
//    }
//}
