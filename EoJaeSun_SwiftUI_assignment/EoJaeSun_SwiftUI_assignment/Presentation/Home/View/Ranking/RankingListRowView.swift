//
//  RankingListRowView.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/12/25.
//

import SwiftUI

struct RankingListRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 8)
                .scaledToFit()
                .frame(height: 145)
                .foregroundStyle(.baeminGray200)
            HStack(spacing: 0) {
                Text("백억보쌈제육")
                    .lineLimit(1)
                    .font(.pretendard(.body_r_12))
                    .foregroundStyle(.baeminGray600)
                Spacer()
            
                Image(.baeminStar)
                Text("5.0")
                    .font(.pretendard(.body_r_12))
                    .foregroundStyle(.baeminGray600)
                Spacer()
                    .frame(width: 4)
                Text("(1973)")
                    .font(.pretendard(.body_r_12))
                    .foregroundStyle(.baeminGray600)
            }
            Text("[든든한 한끼] 보쌈 막국수")
                .font(.pretendard(.body_r_14))
            HStack(spacing: 0) {
                Text("25%")
                    .font(.pretendard(.head_b_14))
                    .foregroundStyle(.red)
                Spacer()
                    .frame(width: 6)
                Text("12,000원")
                    .font(.pretendard(.head_b_14))
                    .foregroundStyle(.baeminBlack)
            }
            Text("16,000원")
                .font(.pretendard(.body_r_12))
                .strikethrough()
                .foregroundStyle(.baeminGray600)
            Text("최소 주문금액 없음")
                .font(.pretendard(.head_b_13))
                .foregroundStyle(.baeminPurple)
        }
        .frame(width: 145)
    }
}


#Preview {
    RankingListRowView()
}

