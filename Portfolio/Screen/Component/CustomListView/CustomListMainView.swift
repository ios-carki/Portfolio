//
//  CustomListMainView.swift
//  Portfolio
//
//  Created by Carki on 2023/07/30.
//

import SwiftUI

struct CustomListMainView: View {
    var listMode: CustomListViewMode?
    var listContentsCount: Int
    
    // MARK: Normal
    var textArray: [String]?
    var body: some View {
        
        switch listMode {
        case .normal:
            CustomNormalView(listContentsCount: listContentsCount, textArray: textArray ?? ["1", "2", "3"])
            //        case .withIcon:
            //            <#code#>
            //        case .fullMode:
            //
            //        case .justImage:
            //
            //        }
        default:
            VStack {
                Text("Please Run \"setMode Function\" First!")
            }
        }
        
    }
}

extension CustomListMainView {
    func setMode(mode: CustomListViewMode?) -> Self {
        var copy = self
        copy.listMode = mode
        return copy
    }
}

struct CustomListMainView_Previews: PreviewProvider {
    static var previews: some View {
        CustomListMainView(listContentsCount: 3)
            .setMode(mode: .normal)
    }
}

/*
 case normal // Only Text
 case withIcon // Leading Image with Text
 case fullMode // Leading Image with Text & Trailing Icon
 case justImage // onlyImage
 */

