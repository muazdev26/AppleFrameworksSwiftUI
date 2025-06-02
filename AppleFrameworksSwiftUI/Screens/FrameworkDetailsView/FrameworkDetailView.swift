//
//  FrameworkDetailView.swift
//  AppleFrameworksSwiftUI
//
//  Created by Apple on 31/05/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    var farmework : Framework
    @Binding var isShowingDetailView : Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }.padding()
            Spacer()
            FrameworkTitleView(framework: farmework)
            Text(farmework.description).font(.body).padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                AFButtonTextView(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: (URL(string: farmework.url) ?? URL(string: "https:apple.com"))!)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(farmework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
