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
            Color.mainBackgroundColor.ignoresSafeArea()
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
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
