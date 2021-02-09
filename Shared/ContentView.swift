//
//  ContentView.swift
//  Shared
//
//  Created by Akash Yashavanthrao Shindhe on 27/01/21.
//

import SwiftUI
enum Type {
    case Text,
         Label,
         TextField,
         TextEditor,
         SecureField,
         Image,
         Button,
         Link,
         NavigationLink,
         ToolbarItem,
         Toggle,
         Map,
         Picker,
         DatePicker,
         ProgressView,
         Slider,
         Stepper
    
    static var allCases :[Type] {
        return [Type.Text,
                .Label,
                .TextField,
                .TextEditor,
                .SecureField,
                .Image,
                .Button,
                .Link,
                .NavigationLink,
                .ToolbarItem,
                .Toggle,
                .Map,
                .Picker,
                .DatePicker,
                .ProgressView,
                .Slider,
                .Stepper]
    }
    
    
    var displayName:String {
        switch self {
        case .Text:
            return "Text"
        case .Label:
            return "Label"
        case .TextField:
            return "TextField"
        case .TextEditor:
            return "TextEditor"
        case .SecureField:
            return "SecureField"
        case .Image:
            return "Image"
        case .Button:
            return "Button"
        case .Link:
            return "Link"
        case .NavigationLink:
            return "NavigationLink"
        case .ToolbarItem:
            return "ToolbarItem"
        case .Toggle:
            return "Toggle"
        case .Map:
            return "Map"
        case .Picker:
            return "Picker"
        case .DatePicker:
            return "DatePicker"
        case .ProgressView:
            return "ProgressView"
        case .Slider:
            return "Slider"
        case .Stepper:
            return "Stepper"
        }
        
    }
    
    var Image: String {
        switch self {
        case .Text:
            return "textformat.alt"
        case .Label:
            return "l.rectangle.roundedbottom"
        case .TextField:
            return "rectangle.dashed"
        case .TextEditor:
            return "rectangle.and.pencil.and.ellipsis"
        case .SecureField:
            return "rectangle.and.pencil.and.ellipsis"
        case .Image:
            return "play"
        case .Button:
            return "cursorarrow.square"
        case .Link:
            return "link"
        case .NavigationLink:
            return "link.circle"
        case .ToolbarItem:
            return "pip.fill"
        case .Toggle:
            return "circle.grid.cross.left.fill"
        case .Map:
            return "map"
        case .Picker:
            return "server.rack"
        case .DatePicker:
            return "calendar"
        case .ProgressView:
            return "slowmo"
        case .Slider:
            return "filemenu.and.selection"
        case .Stepper:
            return "slider.vertical.3"
        }
    }
    
}

struct item :Identifiable{
    var id = UUID()
    var name:String?
    var type:Type?
    var notes:String?
    var gitLink:String?
    var image:String?
    var author:String?
    var subItems:[customItem]?
}

struct customItem:Identifiable {
    var id = UUID()
    var name:String?
    var type:Type?
    var notes:String?
    var gitLink:String?
    var image:String?
    var author:String?
}
struct ContentView: View {
    var body: some View {
        #if os(OSX)
        List {
            HSplitView {
                let items = getTypes()
                
                List(items){ i in
                    HStack{
                        Image(systemName: i.image ?? "face.dashed")
                        Text(i.name ?? "Unknown")
                    }
                    .onHover(perform: { hovering in
                        
                    })
                }.frame( idealWidth: 250, maxWidth: 250, maxHeight: .infinity)
                CustomViewsPane(items: getCustomTypes())
                DetailPane()
                
            }
            .navigationTitle("Elements")
        }
        #endif
        
        #if os(iOS)
       
            Form {
                Group  {
                    Section(header: Text("Text")) {
                        let value = Type.Text
                        NavigationLink(destination: AQText()) {
                            HStack{
                                
                                Image(systemName:value.Image)
                                Text(value.displayName)
                            }
                        }
                        NavigationLink(destination: AQTextStyle()) {
                            HStack{
                                Image(systemName:value.Image)
                                Text("Text Style")
                            }
                        }
                        NavigationLink(destination: AQTextStyle()) {
                            HStack{
                                
                                Image(systemName:value.Image)
                                Text("Text Alignment")
                            }
                        }
                        NavigationLink(destination: AQTextWithDate()) {
                            HStack{
                                
                                Image(systemName:value.Image)
                                Text("Text With Date")
                            }
                        }
                        NavigationLink(destination: AQTextTruncationMode()) {
                            HStack{
                                
                                Image(systemName:value.Image)
                                Text("Text TruncationMode")
                            }
                        }
                        
                    }
                    
                    Section(header: Text("Text Editor")) {
                        let value = Type.TextEditor
                        NavigationLink(destination: AQTextEditor()) {
                            HStack{
                                
                                Image(systemName:value.Image)
                                Text("TextEditor")
                            }
                        }
                        
                    }
                    Section(header: Text("TextField")) {
                        let value = Type.TextField
                        NavigationLink(destination: AQTextField()) {
                            HStack{
                                
                                Image(systemName:value.Image)
                                Text("TextField")
                            }
                        }
                        
                    }
                }
                
                Group {
                    List {
                        Section(header: Text("Image")) {
                            let value = Type.Image
                            NavigationLink(destination: AQImage()) {
                                HStack{
                                    Image(systemName:value.Image)
                                    Text("Image")
                                }
                            }
                            
                        }
                    }
                }
                Group {
                    List {
                        Section(header: Text("Buttons")) {
                            let value = Type.Button
                            NavigationLink(destination: AQButton()) {
                                HStack{
                                    Image(systemName:value.Image)
                                    Text("Buttons")
                                }
                            }
                            
                        }
                    }
                }
                Group {
                    List {
                        Section(header: Text("Controls")) {
                            let value = Type.Link
                            NavigationLink(destination: AQLinks()) {
                                HStack{
                                    Image(systemName:value.Image)
                                    Text("Link")
                                }
                            }
                            NavigationLink(destination: AQMenu()) {
                                HStack{
                                    Image(systemName:"filemenu.and.selection")
                                    Text("Menu")
                                }
                            }
                            
                        }
                    }
                }
                Group {
                    List {
                        Section(header: Text("Value Selectors")) {
                            let value = Type.Slider
                            NavigationLink(destination: AQSlider()) {
                                HStack{
                                    Image(systemName:value.Image)
                                    Text("Slider")
                                }
                            }
                         
                            NavigationLink(destination: AQDatePicker()) {
                                HStack{
                                    Image(systemName:Type.DatePicker.Image)
                                    Text("Date Pickers")
                                }
                            }
                            NavigationLink(destination: AQToggle()) {
                                HStack{
                                    Image(systemName:Type.Toggle.Image)
                                    Text("Toggle")
                                }
                            }
                            NavigationLink(destination: AQStepper()) {
                                HStack{
                                    Image(systemName:Type.Stepper.Image)
                                    Text("Stepper")
                                }
                            }
                            NavigationLink(destination: AQColorPicker()) {
                                HStack{
                                    Image(systemName:Type.Picker.Image)
                                    Text("Color Picker")
                                }
                            }
                            NavigationLink(destination: AQPicker()) {
                                HStack{
                                    Image(systemName:Type.Picker.Image)
                                    Text("Any Picker")
                                }
                            }
                            
                        }
                    }
                }
                Group {
                    List {
                        Section(header: Text("Value Indicators")) {
                            let value = Type.ProgressView
                            NavigationLink(destination: AQProgressView()) {
                                HStack{
                                    Image(systemName:value.Image)
                                    Text("ProgressView")
                                }
                            }
                            
                            NavigationLink(destination: AQLabel()) {
                                HStack{
                                    Image(systemName:Type.Label.Image)
                                    Text("Label")
                                }
                            }
                            
                        }
                    }
                }
                
            }
            .ignoresSafeArea()
            .frame( idealWidth: .infinity, maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarTitle(Text("Elements"))
           
        
        #endif
        
        
        
    }
    func getTypes() -> [item]{
        var items:[item] = []
        for i in Type.allCases{
            items.append(item(id: UUID(), name: i.displayName, type: i, notes: nil, gitLink: nil, image: i.Image, author: nil))
        }
        return items
    }
    func getCustomTypes() -> [customItem]{
        var items:[customItem] = []
        for i in Type.allCases{
            items.append(customItem(id: UUID(), name: i.displayName, type: .Button, notes: "asd", gitLink: "ä", image: i.Image, author: "asd"))
        }
        return items
    }
    
}
struct Grouping<Content: View>: View {
    var title: String
    var icon: String
    var content: () -> Content
    
    var body: some View {
        NavigationLink(destination: GroupView(title: title, content: content)) {
            #if os(iOS)
            HStack{
                Image(systemName: icon)
                Text(title)
                    .font(.headline).padding(.vertical, 8)
            }
            #else
            Label(title, systemImage: icon)
            #endif
        }
    }
}
struct GroupView<Content: View>: View {
    var title: String
    let content: () -> Content
    
    var body: some View {
        #if os(iOS)
        return List {
            content()
        }
        .listStyle(InsetGroupedListStyle())
        .navigationBarTitle(title, displayMode: .inline)
        #else
        return ScrollView {
            content().padding()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


