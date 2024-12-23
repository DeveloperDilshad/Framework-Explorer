//
//  FrameworkDetailView.swift
//  FrameWork
//
//  Created by Dilshad P on 23/12/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
       @State private var isShowingSafariView = false

    
    var body: some View {
        VStack {
                    FrameworkTitleView(framework: framework)
                    
                    Text(framework.description)
                        .font(.body)
                        .padding()
                    
                    Spacer()
                    
                    Button {
                        isShowingSafariView = true
                    } label: {
                       AFButton(title: "Learn More")
                        
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                   .foregroundColor(.yellow)
                  .buttonBorderShape(.roundedRectangle(radius: 20))
                    .tint(.red)
                }
                .sheet(isPresented: $isShowingSafariView, content: {
                    SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
                })

    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
              .preferredColorScheme(.dark)

}
