//
//  AFButtonTextView.swift
//  AppleFrameworksSwiftUI
//
//  Created by Apple on 31/05/2025.
//

import SwiftUI

struct AFButtonTextView: View {
    let title : String
    var body: some View {
        Text(title)
            .frame(width: 250, height: 50)
            .font(.title2)
            .fontWeight(.semibold)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct AFButtonTextView_Previews: PreviewProvider {
    static var previews: some View {
        AFButtonTextView(title: "Learn More")
    }
}
