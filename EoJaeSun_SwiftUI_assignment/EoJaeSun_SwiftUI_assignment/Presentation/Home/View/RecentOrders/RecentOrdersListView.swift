//
//  RecentOrdersListView.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/12/25.
//

import SwiftUI

struct RecentOrdersListView: View {
    var body: some View {
        VStack(alignment:.center ,spacing: 0) {
            HStack(spacing: 0) {
                Text("최근에 주문했어요")
                    .font(.pretendard(.title_sb_18))
                    .foregroundStyle(.baeminBlack)
                Spacer()
                    .frame(width: 3)
                Image(.baeminI)
                    .foregroundStyle(.baeminGray800)
                Spacer()
                Text("전체보기")
                    .font(.pretendard(.body_r_14))
                    .foregroundStyle(.baeminBlack)
                Image(.beaminChevronRight)
                    .foregroundStyle(.baeminBlack)
                
                
            }
            .padding(.horizontal,16)
            .padding(.bottom,18)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 10) {
                    ForEach(RecentOrderModel.mockData, id: \.title) { model in
                        RecentOrdersListRowView(model: model, )
                    }
                }
                .padding(.horizontal,16)
            }
            .frame(height: 245)
        }
        .padding([.top,.bottom], 20)
        .background(Color.baeminWhite)
    }
}

#Preview {
    RecentOrdersListView()
    
}
