//
//  MotionAnimationViewModel.swift
//  Portfolio
//
//  Created by Carki on 2023/07/30.
//

import SwiftUI

final class MotionAnimationViewModel: ObservableObject {
    var itemSize = 20
    
    var randomColor: [Double] = []
    var randomYList: [CGFloat] = []
    var randomSize: [CGFloat] = []
    var randomDurationMillis: [CGFloat] = []
    var randomDelayMillis: [CGFloat] = []
    var screenHeight = Int(UIScreen.main.bounds.height)
    
    init() {
        for i in 0..<20 {
            randomColor.append(Double.random(in: 0.0...0.7))
        }
        randomYList = RandomGenerator.uniqueRandoms(numberOfRandoms: itemSize, minNum: 100, maxNum: screenHeight)
        randomSize = RandomGenerator.uniqueRandoms(numberOfRandoms: itemSize, minNum: 10, maxNum: 50)
        randomDurationMillis = RandomGenerator.uniqueRandoms(numberOfRandoms: itemSize, minNum: 750, maxNum: 1250)
        randomDelayMillis = RandomGenerator.uniqueRandoms(numberOfRandoms: itemSize, minNum: 0, maxNum: 1000)
    }
}
