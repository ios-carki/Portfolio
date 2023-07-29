//
//  PortfolioView.swift
//  Portfolio
//
//  Created by Carki on 2023/07/29.
//

import SwiftUI

struct PortfolioView: View {
    weak var naviagtion: CustomNavigationController?
    @StateObject private var viewModel = PortfolioViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
