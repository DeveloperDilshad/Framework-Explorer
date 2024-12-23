//
//  XDismissButton.swift
//  FrameWork
//
//  Created by Dilshad P on 23/12/24.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
                    Spacer()
                    
                    Button {
                        isShowingDetailView = false
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }
                }
                .padding()

    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
