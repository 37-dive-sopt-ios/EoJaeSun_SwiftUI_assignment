//
//  DiscountStoreModel.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/12/25.
//

import Foundation

struct DiscountStoreModel {
    let title: String
    let star: Float
    let reviewCount: Int
    let deliveryTime: String
    let isFreeDelivery: Bool
    let tags: [BaeminTagType]
}

extension DiscountStoreModel {
    static let mockData: [DiscountStoreModel] = [
        DiscountStoreModel(
            title: "피자헛 신도림점",
            star: 4.7,
            reviewCount: 892,
            deliveryTime: "30~45분",
            isFreeDelivery: true,
            tags: [.baeminClub, .consumptionCoupon]
        ),
        DiscountStoreModel(
            title: "도미노피자 구로점",
            star: 4.6,
            reviewCount: 1203,
            deliveryTime: "25~40분",
            isFreeDelivery: true,
            tags: [.hygieneVerified, .pickupAvailable]
        ),
        DiscountStoreModel(
            title: "굽네치킨 가산점",
            star: 4.8,
            reviewCount: 567,
            deliveryTime: "28~43분",
            isFreeDelivery: false,
            tags: [.consumptionCoupon, .baeminClub]
        ),
        DiscountStoreModel(
            title: "족발야시장 금천점",
            star: 4.4,
            reviewCount: 234,
            deliveryTime: "35~50분",
            isFreeDelivery: true,
            tags: [.pickupAvailable]
        ),
        DiscountStoreModel(
            title: "본죽 독산점",
            star: 4.9,
            reviewCount: 445,
            deliveryTime: "20~30분",
            isFreeDelivery: false,
            tags: [.hygieneVerified, .consumptionCoupon, .baeminClub]
        )
    ]
}
