//
//  AQMenu.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 26/01/21.
//

import SwiftUI

struct AQMenu: View {
    var body: some View {
        Form {
            SectionView(title: "Menu", description: "A control for presenting a menu of actions.") {
                Menu("Click Here") {
                    Button("Duplicate", action: {})
                    Button("Rename", action: {})
                    Button("Delete…", action: {})
                    Menu("Copy") {
                        Button("Copy", action: {})
                        Button("Copy Formatted", action: {})
                        Button("Copy Library Path", action: {})
                    }
                }
            }
            Group{
                SectionView(title: "Menu", description: "A control for presenting a menu of actions.",codeSample: ".menuStyle(DefaultMenuStyle())") {
                    Menu("Click Here") {
                        Button("Duplicate", action: {})
                        Button("Rename", action: {})
                        Button("Delete…", action: {})
                        Menu("Copy") {
                            Button("Copy", action: {})
                            Button("Copy Formatted", action: {})
                            Button("Copy Library Path", action: {})
                        }
                    }.menuStyle(DefaultMenuStyle())
                }
                #if os(OSX)
                SectionView(title: "Menu", description: "A control for presenting a menu of actions.",codeSample: ".menuStyle(BorderedButtonMenuStyle())") {
                    Menu("Click Here") {
                        Button("Duplicate", action: {})
                        Button("Rename", action: {})
                        Button("Delete…", action: {})
                        Menu("Copy") {
                            Button("Copy", action: {})
                            Button("Copy Formatted", action: {})
                            Button("Copy Library Path", action: {})
                        }
                    }.menuStyle(BorderedButtonMenuStyle())
                }
                #endif
                SectionView(title: "Menu", description: "A control for presenting a menu of actions.",codeSample: ".menuStyle(BorderlessButtonMenuStyle())") {
                    Menu("Click Here") {
                        Button("Duplicate", action: {})
                        Button("Rename", action: {})
                        Button("Delete…", action: {})
                        Menu("Copy") {
                            Button("Copy", action: {})
                            Button("Copy Formatted", action: {})
                            Button("Copy Library Path", action: {})
                        }
                    }.menuStyle(BorderlessButtonMenuStyle())
                }
            }
        }
    }
}

struct AQMenu_Previews: PreviewProvider {
    static var previews: some View {
        AQMenu()
    }
}
