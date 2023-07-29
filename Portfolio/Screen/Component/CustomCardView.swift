//
//  CustomCardView.swift
//  Portfolio
//
//  Created by Carki on 2023/07/29.
//

import SwiftUI

struct CustomCardView: View {
    
    var titleText: String
    var subTitleText: String
    var action: (() -> ())?
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.black.opacity(0.3))
//                .foregroundStyle(LinearGradient(colors: [.teal.opacity(0.8), .purple.opacity(0.4)], startPoint: .top, endPoint: .bottom))
//                .foregroundColor(.black.opacity(0.7))
            
            VStack(spacing: 16) {
                ZStack {
                    CustomCircleView()
                        .frame(width: 300, height: 300)
                    Text("🤗")
                        .font(.system(size: 100))
                }
                HStack {
                    VStack(alignment: .leading, spacing: 12) {
                        Text(titleText)
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .fontWeight(.semibold)
                            .padding(.top, 16)
                        
                        Text(subTitleText)
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                            .lineLimit(3)
                            .multilineTextAlignment(.leading)
                            .frame(height: 30)
                            .padding(.bottom, 12)
                        
                        HStack {
                            Spacer()
                            Text("자세히 보기")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(.gray)
                                .onTapGesture {
                                    action?()
                                }
                        }
                        .frame(height: 30)
                        
                    }
                    .padding(.leading, 16)
                    
                    Spacer()
                    
                }
                Spacer()
            }
            .padding(.all, 16)
            
        }
        .frame(height: 500)
        .frame(maxWidth: .infinity)
    }
}

struct CustomCardView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            CustomCardView(titleText: "Title", subTitleText: "안녕하세요, 저는 노준혁입니다. 저는 서울에 거주하고 있으며 29세입니다. 2015년에 소프트웨어 공학을 전공했고, 현재는 2023년에 iOS 개발자로서의 경력을 쌓고 있습니다.저는 외국인 사수와의 협업 경험이 있어서 개발과 관련된 내용을 영어로 소통하는 데 어려움이 없습니다. 가벼운 농담 역시 가능합니다.앱 개발자로서, 기능 개발뿐만 아니라 UI/UX 디자인과 개발 역시 매우 중요하다고 생각합니다. 앱 개발의 마무리는 사용자 피드백이라고 생각하여 사용자 친화적인 디자인과 원활한 애플리케이션 개발을 저의 개발 가치관으로 삼고 있습니다.현재 iOS 개발 트렌드는 UIKit 프로젝트에서 SwiftUI로의 전환하는 추세를 보입니다. 그에 맞춰서 저도 SwiftUI를 적극적으로 경험하고 있습니다.또한, CustomView (UIKit, SwiftUI), 반응형 프로그래밍 (RxSwift, Combine 등), MVC/MVVM 디자인 패턴, Swift와 Vapor를 사용한 백엔드 서버 및 API 개발, 그리고 블록체인 지갑 등과 같은 분야에서 경험과 지식을 갖고 있습니다.").padding(.vertical, 16)
        }
        
    }
}
