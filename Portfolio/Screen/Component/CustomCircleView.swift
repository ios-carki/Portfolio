//
//  CustomCircleView.swift
//  Portfolio
//
//  Created by Carki on 2023/07/29.
//

import SwiftUI

struct CustomCircleView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .teal.opacity(0.4),
                                .indigo.opacity(0.6)
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            MotionAnimationView()
        }
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
