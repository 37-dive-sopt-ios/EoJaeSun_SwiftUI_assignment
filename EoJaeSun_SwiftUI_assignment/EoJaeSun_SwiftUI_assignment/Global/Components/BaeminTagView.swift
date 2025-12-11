//
//  BaeminTagView.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/12/25.
//

import SwiftUI

struct BaeminTagView: View {
    let tagType: BaeminTagType
    var body: some View {
        HStack(spacing: 2) {
            if tagType == .baeminClub {
                Image(.baminClub)
            }
            Text(tagType.title)
                .font(.pretendard(.title_sb_10))
                .foregroundColor(tagType == .baeminClub ? .baeminMint600 :
                        .baeminGray800)
        }
        .padding(.vertical,3)
        .padding(.horizontal,5)
        .overlay {
            if tagType == .baeminClub {
                RoundedRectangle(cornerRadius: 4)
                    .stroke(.baeminMint500)
            }
        }
        .background(tagType == .baeminClub ? Color.baeminMint500.opacity(0.1) : Color.baeminBackgroundWhite)
        .cornerRadius(4)
    }
}



#Preview {
    BaeminTagView(tagType: .baeminClub)
}

