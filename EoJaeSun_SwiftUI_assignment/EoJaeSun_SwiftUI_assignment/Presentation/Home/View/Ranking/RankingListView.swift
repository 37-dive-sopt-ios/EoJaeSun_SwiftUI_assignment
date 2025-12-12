//
//  RankingListView.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/12/25.
//

import SwiftUI

struct RankingListView: View {
    var body: some View {
        VStack(alignment:.center ,spacing: 0) {
            HStack(spacing: 0) {
                Text("우리 동네 한그릇 인기 랭킹")
                    .font(.pretendard(.title_sb_18))
                    .foregroundStyle(.baeminWhite)
                Spacer()
                    .frame(width: 3)
                Image(.baeminI)
                    .foregroundStyle(.baeminWhite)
                Spacer()
                Text("전체보기")
                    .font(.pretendard(.body_r_14))
                    .foregroundStyle(.baeminWhite)
                Image(.beaminChevronRight)
                    .foregroundStyle(.baeminWhite)
                
                
            }
            .padding(.horizontal,16)
            .padding(.bottom,18)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 10) {
                    ForEach(0..<6) { _ in
                        RankingListRowView()
                    }
                }
                .padding(.horizontal,16)
            }
            .frame(height: 245)
            
            
            
        }.padding(.top, 24)
            .padding(.bottom, 20)
        .background {
            LinearGradient(
                colors: [.baeminPurple100, .baeminWhite],
                startPoint: .top,
                endPoint: UnitPoint(x: 0.5, y: 0.5)
            )
        }
    }
}

#Preview {
    RankingListView()
    
}
