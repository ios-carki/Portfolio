//
//  TestImage.swift
//  Portfolio
//
//  Created by Carki on 2023/07/30.
//

import SwiftUI

struct TestImage: View {
    @State private var isFlipped = false

        var body: some View {
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(isFlipped ? 180 : 0)) // 뷰의 회전 각도를 조절하여 좌우로 뒤집히도록 합니다.
                .animation(Animation.easeInOut(duration: 1.0))
                .onAppear {
                    withAnimation {
                        isFlipped.toggle()
                    }
                }
        }
}

struct TestImagePreview: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            TestImage()
        }
    }
}
