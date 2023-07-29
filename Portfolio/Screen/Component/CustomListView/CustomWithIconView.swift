//
//  CustomWithIconView.swift
//  Portfolio
//
//  Created by Carki on 2023/07/30.
//

import SwiftUI

struct CustomWithIconView: View {
    var listContentsCount: Int
    var iconColorArray: [Color] = []
    var imageMode: ImageMode?
    var imageArray: [String] = []
    var titleArray: [String] = []
    
    var body: some View {
        ForEach(0..<listContentsCount, id: \.self) { index in
            if imageMode == .system {
                HStack(spacing: 12) {
                    RoundedRectangle(cornerRadius: 6)
                        .foregroundColor(iconColorArray[index])
                        .overlay(
                            Image(systemName: imageArray[index])
                                .iconModifier(width: 20, height: 20)
                        )
                        .frame(width: 30, height: 30)
                    
                    Text(titleArray[index])
                        .font(.system(size: 16))
                    
                    Spacer()
                }
            }
            
        }
    }
}

extension CustomWithIconView {
    func setImageMode(mode: ImageMode?) -> Self {
        var copy = self
        copy.imageMode = mode
        return copy
    }
}

struct CustomWithIconView_Previews: PreviewProvider {
    static var previews: some View {
        CustomWithIconView(listContentsCount: 3, iconColorArray: [.black, .white, .blue])
    }
}
