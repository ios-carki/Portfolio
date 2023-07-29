//
//  Constants.swift
//  Portfolio
//
//  Created by Carki on 2023/07/29.
//

import Foundation

struct Constants {
    static var mySubTitleText: String = """
                                안녕하세요, iOS 개발자로서 앱에서 포트폴리오를 만들어보면 좋겠다라는 아이디어로 시작한 프로젝트입니다.
                                """
}

enum CustomListViewMode {
    case normal // Only Text
    case withIcon // Leading Image with Text
    case fullMode // Leading Image with Text & Trailing Icon
    case justImage // onlyImage
}

enum ImageMode {
    case system
    case custom
}
