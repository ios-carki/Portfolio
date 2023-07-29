//
//  Constants.swift
//  Portfolio
//
//  Created by Carki on 2023/07/29.
//

import Foundation

struct Constants {
    static var mySubTitleText: String = """
                                안녕하세요, 저는 노준혁입니다. 저는 서울에 거주하고 있으며 29세입니다. 2015년에 소프트웨어 공학을 전공했고, 현재는 2023년에 iOS 개발자로서의 경력을 쌓고 있습니다.
                                저는 외국인 사수와의 협업 경험이 있어서 개발과 관련된 내용을 영어로 소통하는 데 어려움이 없습니다. 가벼운 농담 역시 가능합니다.

                                앱 개발자로서, 기능 개발뿐만 아니라 UI/UX 디자인과 개발 역시 매우 중요하다고 생각합니다. 앱 개발의 마무리는 사용자 피드백이라고 생각하여 사용자 친화적인 디자인과 원활한 애플리케이션 개발을 저의 개발 가치관으로 삼고 있습니다.

                                현재 iOS 개발 트렌드는 UIKit 프로젝트에서 SwiftUI로의 전환하는 추세를 보입니다. 그에 맞춰서 저도 SwiftUI를 적극적으로 경험하고 있습니다.

                                또한, CustomView (UIKit, SwiftUI), 반응형 프로그래밍 (RxSwift, Combine 등), MVC/MVVM 디자인 패턴, Swift와 Vapor를 사용한 백엔드 서버 및 API 개발, 그리고 블록체인 지갑 등과 같은 분야에서 경험과 지식을 갖고 있습니다.
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
