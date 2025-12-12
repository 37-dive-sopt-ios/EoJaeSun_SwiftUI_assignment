//
//  BaeminTagType.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/12/25.
//

import Foundation

enum BaeminTagType: String, CaseIterable {
    case baeminClub
    case consumptionCoupon
    case pickupAvailable
    case hygieneVerified
    
    var title: String {
        switch self {
        case .baeminClub:
            return "배민클럽"
        case .consumptionCoupon:
            return "소비쿠폰"
        case .pickupAvailable:
            return "픽업가능"
        case .hygieneVerified:
            return "위생인증"
        }
    }
}
