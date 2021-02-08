//
//  AQViewLayout.swift
//  AQCoreSwiftUIKit
//
//  Created by Akash Yashavanthrao Shindhe on 01/02/21.
//

import SwiftUI

struct AQViewLayout: View {
    var body: some View {
       
            Form {
                Group {
                    List {
                        Section(header: Text("Alert")) {
                        
                            NavigationLink(destination: AQAlert()) {
                                HStack{
                                    Image(systemName:"list.bullet.rectangle")
                                    Text("Alert")
                                }
                            }
                            
                        }
                    }
                }//group end Alert
                Group {
                    List {
                        Section(header: Text("Spacer and Divider")) {
                        
                            NavigationLink(destination: AQSpacer()) {
                                HStack{
                                    Image(systemName:"list.bullet.rectangle")
                                    Text("Spacer")
                                }
                            }
                            NavigationLink(destination: AQDivider()) {
                                HStack{
                                    Image(systemName:"list.bullet.rectangle")
                                    Text("Divider")
                                }
                            }
                            
                        }
                    }
                }//end spacer and divider
                Group {
                    List {
                        Section(header: Text("Stacks")) {
                        
                            NavigationLink(destination: AQHStack()) {
                                HStack{
                                    Image(systemName:"list.bullet.rectangle")
                                    Text("HStack")
                                }
                            }
                            NavigationLink(destination: AQVStack()) {
                                HStack{
                                    Image(systemName:"list.bullet.rectangle")
                                    Text("VStack")
                                }
                            }
                            NavigationLink(destination: AQZStack()) {
                                HStack{
                                    Image(systemName:"list.bullet.rectangle")
                                    Text("ZStack")
                                }
                            }
                            
                        }
                    }
                }//end stacks
                Group {
                    List {
                        Section(header: Text("Grids")) {
                        
                            NavigationLink(destination: AQLazyHGrid()) {
                                HStack{
                                    Image(systemName:"list.bullet.rectangle")
                                    Text("LazyHGrid")
                                }
                            }
                            NavigationLink(destination: AQLazyVGrid()) {
                                HStack{
                                    Image(systemName:"list.bullet.rectangle")
                                    Text("LazyVGrid")
                                }
                            }
                            
                        }
                    }
                }
                
                Group {
                    List {
                        Section(header: Text("Form")) {
                        
                            NavigationLink(destination: AQForms()) {
                                HStack{
                                    Image(systemName:"list.bullet.rectangle")
                                    Text("Forms")
                                }
                            }
                            NavigationLink(destination: AQGroup()) {
                                HStack{
                                    Image(systemName:"list.bullet.rectangle")
                                    Text("Form with Groups")
                                }
                            }
                            NavigationLink(destination: AQGroupBox()) {
                                HStack{
                                    Image(systemName:"list.bullet.rectangle")
                                    Text("Form with GroupBox")
                                }
                            }
                            NavigationLink(destination: AQSection()) {
                                HStack{
                                    Image(systemName:"list.bullet.rectangle")
                                    Text("Form with Sections")
                                }
                            }
                           
                            
                        }
                    }
                }
            }
        }
    
}

struct AQViewLayout_Previews: PreviewProvider {
    static var previews: some View {
        AQViewLayout()
    }
}
