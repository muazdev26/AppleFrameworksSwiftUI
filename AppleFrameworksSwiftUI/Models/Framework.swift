//
//  Framework.swift
//  AppleFrameworksSwiftUI
//
//  Created by Apple on 26/05/2025.
//

import Foundation

struct Framework : Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let url: String
    let description: String
}
