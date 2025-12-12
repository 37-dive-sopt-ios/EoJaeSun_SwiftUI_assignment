//
//  CategoryType.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/10/25.
//

import Foundation

enum CategoryType: String, CaseIterable, Hashable {
    case foodDelivery = "음식배달"
    case pickup = "픽업"
    case groceryShopping = "장보기·쇼핑"
    case gift = "선물하기"
    case benefits = "혜택모아보기"
    var menus: [String] {
        switch self {
        case .foodDelivery:
            return ["한그릇", "치킨", "카페·디저트", "피자", "분식",
             "고기", "찜·탕", "야식", "패스트푸드", "족발·보쌈",
            ]
            
        case .pickup:
            return ["치킨", "피자", "버거", "카페·디저트", "분식",
             "중식", "돈까스·회", "샐러드", "샌드위치", "아시안",
            ]
            
        case .groceryShopping:
            return ["채소", "과일", "정육", "수산", "계란·유제품",
             "냉동식품", "간편식", "음료·물", "과자·빵", "생활용품",
            ]
            
        case .gift:
            return ["케이크", "꽃다발", "과일", "한우", "건강식품",
             "커피·음료", "과자·초콜릿", "화장품", "출산·유아", "상품권",
            ]
            
        case .benefits:
            return ["배민1", "알뜰배달", "포장할인", "첫주문할인", "쿠폰존",
             "배민페이", "선물하기", "이벤트", "멤버십", "친구초대",
             ]
            
        }
    }
}
