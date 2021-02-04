//
//  AQAlert.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 29/01/21.
//

import SwiftUI

struct AQAlert: View {
    @State var isError: Bool = false
    @State var isSheet: Bool = false
    var body: some View {
        Form {
            Button("Alert") {
                self.isError = true
            }.alert(isPresented: $isError, content: {
                Alert(title: Text("❗️No Internet"), message: Text("Turn on internet Services"), dismissButton: .default(Text("OK")))
            })
            
            
            
            Button("Action Sheet") {
                self.isSheet = true
            }.actionSheet(isPresented: $isSheet, content: {
                self.actionSheet
            })
        }
    }
    var actionSheet: ActionSheet {
        ActionSheet(title: Text("Delete"),
                    message: Text("Are you sure you want to delete the item ?"),
                    buttons: [
                        .default(Text("Cancel"), action: {
                            
                        }),
                        .destructive(Text("Delete"), action: {
                            
                        })
                    ]
        )
    }
}

struct AQAlert_Previews: PreviewProvider {
    static var previews: some View {
        AQAlert()
    }
}
