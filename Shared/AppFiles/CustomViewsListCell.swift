//
//  CustomViewsListCell.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 16/01/21.
//

import SwiftUI

struct CustomViewsListCell: View {
    var item:customItem!
    var body: some View {
        HStack {
            Image(systemName: item.image ?? "")
            VStack{
                Text(item.name!)
                
            }
            
        }
    }
}

struct CustomViewsListCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewsListCell(item: customItem(id: UUID(), name: "Button", type: Type.Button, notes: "A control that performs an action when triggered.You create a button by providing an action and a label. The action is either a method or closure property that does something when a user clicks or taps the button. The label is a view that describes the button’s action, for example, by showing text such as Cancel or an icon such as a back arrow.", gitLink: "", image: "square.and.pencil", author: "Akash"))
    }
}
