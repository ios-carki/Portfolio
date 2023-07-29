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
                .foregroundColor(.black)
            ForEach(0..<50, id: \.self) { index in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 5, height: 5)
                    .foregroundColor(.white)
                    .position(randomPosition())
            }
            MotionAnimationView()
        }
        .mask(Circle())
    }
    
    // 임의의 위치를 반환하는 함수
    private func randomPosition() -> CGPoint {
        let x = CGFloat.random(in: 0...UIScreen.main.bounds.width)
        let y = CGFloat.random(in: 0...UIScreen.main.bounds.height)
        return CGPoint(x: x, y: y)
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
