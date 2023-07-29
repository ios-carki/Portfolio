//
//  Image+Extension.swift
//  Portfolio
//
//  Created by Carki on 2023/07/29.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier(width: CGFloat, height: CGFloat) -> some View {
        self
            .imageModifier()
            .frame(width: width, height: height)
            .foregroundColor(.white)
    }
}
