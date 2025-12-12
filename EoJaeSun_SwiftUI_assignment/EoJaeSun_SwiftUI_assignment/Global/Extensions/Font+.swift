//
//  Font+.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/8/25.
//

import SwiftUI

extension Font {
    enum Pretendard {
            case regular
            case semiBold
            case bold
            
            var name: String {
                switch self {
                case .regular:
                    return "Pretendard-Regular"
                case .semiBold:
                    return "Pretendard-SemiBold"
                case .bold:
                    return "Pretendard-Bold"
                }
            }
        }
    
    enum PretendardStyle {
        
        //Head
        case head_b_24
        case head_b_18
        case head_b_16
        case head_b_14
        case head_b_13
        
        //Title
        case title_sb_18
        case title_sb_14
        case title_sb_10
        
        //body
        case body_r_14
        case body_r_13
        case body_r_12
        case body_r_10
        
        var font: Font {
            switch self {
                
            case .head_b_24:
                return .custom(Pretendard.bold.name, size: 24)
            case .head_b_18:
                return .custom(Pretendard.bold.name, size: 18)
            case .head_b_16:
                return .custom(Pretendard.bold.name, size: 16)
            case .head_b_14:
                return .custom(Pretendard.bold.name, size: 14)
            case .head_b_13:
                return .custom(Pretendard.bold.name, size: 13)
            case .title_sb_18:
                return .custom(Pretendard.semiBold.name, size: 18)
            case .title_sb_14:
                return .custom(Pretendard.semiBold.name, size: 14)
            case .title_sb_10:
                return .custom(Pretendard.semiBold.name, size: 10)
            case .body_r_14:
                return .custom(Pretendard.regular.name, size: 14)
            case .body_r_13:
                return .custom(Pretendard.regular.name, size: 13)
            case .body_r_12:
                return .custom(Pretendard.regular.name, size: 12)
            case .body_r_10:
                return .custom(Pretendard.regular.name, size: 10)
            }
        }
    }
    
    static func pretendard(_ style: PretendardStyle) -> Font {
            return style.font
        }
}
