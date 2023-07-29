//
//  PortfolioViewModel.swift
//  Portfolio
//
//  Created by Carki on 2023/07/29.
//

import SwiftUI

final class PortfolioViewModel: ObservableObject {
    @Published var iconArray: [String] = ["person.fill", "globe", "swift", "apple.logo"]
    @Published var titleArray: [String] = ["Contact Me", "Website", "Tech Stack", "Portfolio"]
    @Published var iconColorArray: [Color] = [Color.blue, Color.teal, Color.orange, Color.red]
}
