//
//  SectionView.swift
//  SwiftUI Kit
//
//  
//

import SwiftUI

struct SectionView<Content: View>: View {
    var title: String?
    var description: String
    var codeSample: String?
    let content: () -> Content
    var body: some View {
        Group {
            #if os(iOS)
            Section(header: HStack{
                Text(title ?? "")
                    .foregroundColor(.blue)
                Spacer()
                //                Link(destination: URL(string: "https://www.apple.com")!, label: {
                //                    Image(systemName: "chevron.left.slash.chevron.right")
                //                })
                //                Link(destination: URL(string: "https://www.apple.com")!, label: {
                //                    Image(systemName: "link.circle")
                //                })
            }
            ,
            footer: HStack{
                Text(description)
                    .multilineTextAlignment(.leading)
                    .font(.footnote)
                    .foregroundColor(.black)
                    .padding(10)
            }
            ) {
                Text("Example")
                    .font(.footnote)
                content()
                //MARK:- CODE SAMPLE COMES HERE
                if let codeSample = codeSample {
                    VStack{
                        Text("Code")
                            .font(.footnote)
                        HStack{
                            Text(codeSample)
                                .padding()
                                .font(.footnote)
                                .foregroundColor(.purple)
                                .multilineTextAlignment(.leading)
                            Spacer()
                            
                        }.background(Color.black)
                        .cornerRadius(10)
                        .onTapGesture {
                            //TODO: copy code to paste box
                        }
                    }
                }
                
            }
            #else
            Group {
                
                if let topTitle = codeSample {
                    Text(topTitle).font(.body).foregroundColor(.secondary)
                }
                if let title = title {
                    Text(title).font(.title3).bold()
                }
                content()
                Text(description).font(.body).foregroundColor(.secondary)
                Divider()
            }
            #endif
            
        }

    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        Form {
            SectionView(title: "ForegroundColor", description: "You can change font color setting foregroundcolor",codeSample: "Text(\"Your Text Here\")\n.foregroundColor(.red)") {
                VStack {
                    Text("Red").foregroundColor(.red)
                    Text("Green").foregroundColor(.green)
                    Text("Blue").foregroundColor(.blue)
                }
            }
        }.previewLayout(.sizeThatFits)
    }
}
