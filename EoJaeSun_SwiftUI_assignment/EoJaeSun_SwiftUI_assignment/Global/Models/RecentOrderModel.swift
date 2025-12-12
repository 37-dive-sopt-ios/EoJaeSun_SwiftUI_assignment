//
//  RecentOrderModel.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/12/25.
//

import Foundation

struct RecentOrderModel {
    let count: Int
    let title: String
    let star: Float
    let reviewCount: Int
    let deliveryTime: String
    let isFreeDelivery: Bool
    let tags: [BaeminTagType]
}

extension RecentOrderModel {
    static let mockData: [RecentOrderModel] = [
        RecentOrderModel(
            count: 1,
            title: "ASAP PIZZA 구로디지털단",
            star: 5.0,
            reviewCount: 404,
            deliveryTime: "31~46분",
            isFreeDelivery: true,
            tags: [.baeminClub, .pickupAvailable]
        ),
        RecentOrderModel(
            count: 3,
            title: "BBQ 치킨 강남점",
            star: 4.8,
            reviewCount: 1024,
            deliveryTime: "25~40분",
            isFreeDelivery: true,
            tags: [.baeminClub, .hygieneVerified]
        ),
        RecentOrderModel(
            count: 2,
            title: "맘스터치 역삼점",
            star: 4.5,
            reviewCount: 512,
            deliveryTime: "20~35분",
            isFreeDelivery: false,
            tags: [.pickupAvailable, .consumptionCoupon]
        ),
        RecentOrderModel(
            count: 5,
            title: "교촌치킨 선릉점",
            star: 4.9,
            reviewCount: 2048,
            deliveryTime: "35~50분",
            isFreeDelivery: true,
            tags: [.baeminClub, .hygieneVerified, .pickupAvailable]
        ),
        RecentOrderModel(
            count: 1,
            title: "홍콩반점 삼성점",
            star: 4.3,
            reviewCount: 328,
            deliveryTime: "28~43분",
            isFreeDelivery: false,
            tags: [.consumptionCoupon]
        )
    ]
}
