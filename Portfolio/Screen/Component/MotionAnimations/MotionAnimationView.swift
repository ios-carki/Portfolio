//
//  MotionAnimationView.swift
//  HelloWorld
//
//  Created by Carki on 2023/07/26.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - PROPERTIES
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimation: Bool = false
    
    @StateObject private var viewModel = MotionAnimationViewModel()
    
    var body: some View {
        GeometryReader { geo in
            ForEach(0..<viewModel.itemSize, id: \.self) { id in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: viewModel.randomSize[id],
                          height: viewModel.randomSize[id]
                    )
                    .foregroundStyle(LinearGradient(colors: [.white.opacity(0.8), .yellow.opacity(viewModel.randomColor[id])], startPoint: .leading, endPoint: .trailing))
                    .offset(x: isAnimation ? (geo.size.width + viewModel.randomSize[id]) : -viewModel.randomSize[id],
                            y: isAnimation ? (viewModel.randomYList[id] - geo.size.width) : viewModel.randomYList[id]
                    )
                    .animation(
                        .linear(duration: Double(viewModel.randomDurationMillis[id])/1000)
                        .delay(Double(viewModel.randomDelayMillis[id])/1000)
                        .repeatForever(autoreverses: false)
                    )
            }
        }
        .ignoresSafeArea()
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                isAnimation = true
            }
            
        }
//        .frame(width: 300, height: 300)
//        .mask(Circle())
//        .drawingGroup()
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
            .background(
                Circle()
                    .fill(.black)
            )
    }
}
