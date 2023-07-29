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
    
    //MARK: Sheet
    @Published var contackMeSheet: Bool = false
    @Published var webSiteSheet: Bool = false
    @Published var techStackSheet: Bool = false
    @Published var portfolioSheet: Bool = false
}
