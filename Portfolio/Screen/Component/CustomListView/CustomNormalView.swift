//
//  CustomNormalView.swift
//  Portfolio
//
//  Created by Carki on 2023/07/30.
//

import SwiftUI

struct CustomNormalView: View {
    var listContentsCount: Int
    var textArray: [String] = []
    
    var body: some View {
        ZStack {
            Color.clear.ignoresSafeArea()
            VStack(spacing: 8) {
                ForEach(0..<listContentsCount, id: \.self) { index in
                    HStack {
                        Text(textArray[index])
                            .font(.system(size: 16))
                        Spacer()
                    }.padding(.leading, 8)
                    
                        
                    Divider()
                        .frame(height: 1)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.8))
                        .padding(.vertical, 4)
                }
                
            }
            .padding(.vertical, 4)
        }
    }
}

struct CustomNormalView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.purple.opacity(0.4).ignoresSafeArea()
            CustomNormalView(listContentsCount: 2, textArray: ["1", "2", "3"])
        }
    }
}
