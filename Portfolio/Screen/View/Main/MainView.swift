//
//  MainView.swift
//  Portfolio
//
//  Created by Carki on 2023/07/29.
//

import SwiftUI

struct MainView: View {
    weak var navigation: CustomNavigationController?
    @StateObject private var viewModel = MainViewModel()
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            MotionAnimationView()
            ForEach(0..<50, id: \.self) { index in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 5, height: 5)
                    .foregroundColor(.white)
                    .position(randomPosition())
            }
            VStack {
                HStack {
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    Text("Welcome!")
                        .font(.system(size: 40, weight: .black))
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                }
                .foregroundStyle(LinearGradient(colors: [.yellow.opacity(0.4), .brown], startPoint: .top, endPoint: .bottom))
                CustomCardView(titleText: "iOS 개발자 Caki 입니다.", subTitleText: Constants.mySubTitleText) {
                    navigation?.pushViewController(UIHostingController(rootView: PortfolioView(navigation: navigation)), animated: true)
                }
                Spacer()
            }
            .padding(.all, 16)
        }
    }
    
    private func randomPosition() -> CGPoint {
        let x = CGFloat.random(in: 0...UIScreen.main.bounds.width)
        let y = CGFloat.random(in: 0...UIScreen.main.bounds.height)
        return CGPoint(x: x, y: y)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
