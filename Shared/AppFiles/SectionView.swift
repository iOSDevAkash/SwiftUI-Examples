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
    var topTitle: String?
    let content: () -> Content
    var body: some View {
        Group {
            #if os(iOS)
            Section(header: HStack{
                Text(topTitle ?? "")
                Spacer()
                Link(destination: URL(string: "https://www.apple.com")!, label: {
                    Image(systemName: "chevron.left.slash.chevron.right")
                })
                Link(destination: URL(string: "https://www.apple.com")!, label: {
                    Image(systemName: "link.circle")
                })
            }
            ,
            footer: Text(description)) {
                if let title = title {
                    Text(title)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                }
                content()
            }
            #else
            Group {
                
                if let topTitle = topTitle {
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
            SectionView(title: "Text", description: "DescriptionvDescription DescriptionDescr iptionDescriptionDescription", topTitle: "Title") {
                Text("Content")
            }
        }.previewLayout(.sizeThatFits)
    }
}
