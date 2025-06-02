//
//  FrameworksGridView.swift
//  AppleFrameworksSwiftUI
//
//  Created by Apple on 26/05/2025.
//

import SwiftUI

struct FrameworksGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(farmework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

struct FrameworksGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksGridView()
    }
}
