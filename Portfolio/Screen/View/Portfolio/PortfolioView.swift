//
//  PortfolioView.swift
//  MyPortfolio
//
//  Created by Carki on 2023/07/29.
//

import SwiftUI

struct PortfolioView: View {
    weak var navigation: CustomNavigationController?
    @StateObject private var viewModel = PortfolioViewModel()
    
    var body: some View {
        ZStack {
            Color.mainBackgroundColor.ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Market
                    VStack(spacing: 8) {
                        SectionHeaderTitle(title: "My Application in market")
                        
                        CellBackgroundView(height: 100)
                            .overlay(
                                VStack(spacing: 4) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack(spacing: 20) {
                                            ForEach(0..<2, id: \.self) { index in
                                                Image("MyApp\(index+1)")
                                                    .resizable()
                                                    .frame(width: 50, height: 50)
                                                    .cornerRadius(12)
                                            }
                                        }
                                        .padding(.horizontal, 12)
                                    }
                                }
                                
                            )
                    }
                    
                    // MARK: - AboutMe
                    VStack(spacing: 8) {
                        SectionHeaderTitle(title: "About Me")
                        
                        CellBackgroundView(height: 220)
                            .overlay(
                                VStack {
                                    ForEach(0..<viewModel.iconArray.count, id: \.self) { index in
                                        VStack {
                                            HStack(spacing: 12) {
                                                RoundedRectangle(cornerRadius: 6)
                                                    .foregroundColor(viewModel.iconColorArray[index])
                                                    .overlay(
                                                        Image(systemName: viewModel.iconArray[index])
                                                            .iconModifier(width: 20, height: 20)
                                                    )
                                                    .frame(width: 30, height: 30)
                                                
                                                Text(viewModel.titleArray[index])
                                                    .font(.system(size: 16))
                                                
                                                Spacer()
                                                
                                                Image(systemName: "chevron.right")
                                            }
                                            if (index + 1) != viewModel.iconArray.count {
                                                Divider()
                                                    .frame(height: 1)
                                                    .frame(maxWidth: .infinity)
                                                    .background(LinearGradient(colors: [.white, .black], startPoint: .leading, endPoint: .trailing))
                                                    .padding(.horizontal, -12)
                                            }
                                            
                                        }
                                        .onTapGesture {
                                            switch index {
                                            case 0:
                                                viewModel.contackMeSheet.toggle()
                                            case 1:
                                                viewModel.webSiteSheet.toggle()
                                            case 2:
                                                viewModel.techStackSheet.toggle()
                                            case 3:
                                                viewModel.portfolioSheet.toggle()
                                            default:
                                                print("Default")
                                            }
                                        }
                                        .padding(.horizontal, 16)
                                    }
                                }
                            )
                    }
                    
                    FooterView(title: "Copyright © 2023 iOS-Carki.\nAll right reserved.")
                    
                }
                .padding(.horizontal, 16)
            }
        }
        .sheet(isPresented: $viewModel.contackMeSheet) {
            Text("contackMeSheet")
        }
        .sheet(isPresented: $viewModel.webSiteSheet) {
            Text("webSiteSheet")
        }
        .sheet(isPresented: $viewModel.techStackSheet) {
            Text("techStackSheet")
        }
        .sheet(isPresented: $viewModel.portfolioSheet) {
            Text("portfolioSheet")
        }
    }
}
struct CellBackgroundView: View {
    var height: CGFloat
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .foregroundColor(.gray.opacity(0.4))
            .frame(height: height)
    }
}

struct SectionHeaderTitle: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.white) // 기본 텍스트 색상 사용
                .font(.footnote)
            Spacer()
        } // 기본 footer 글꼴 사용 (필요에 따라 변경 가능)
    }
}

struct FooterView: View {
    var title: String
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .textCase(.none) // 이 부분을 추가하여 대문자 변환을 막음
                .foregroundColor(.gray) // 기본 텍스트 색상 사용
                .font(.footnote) // 기본 footer 글꼴 사용 (필요에 따라 변경 가능)
                .multilineTextAlignment(.center)
            Spacer()
        }
        .padding(.top, 8)
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
