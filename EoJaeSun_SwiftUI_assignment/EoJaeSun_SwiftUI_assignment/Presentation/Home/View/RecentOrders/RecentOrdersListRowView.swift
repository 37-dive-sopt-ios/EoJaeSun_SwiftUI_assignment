//
//  RecentOrdersListRowView.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/12/25.
//

import SwiftUI

struct RecentOrdersListRowView: View {
    let model: RecentOrderModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            RoundedRectangle(cornerRadius: 8)
                .frame(width:188 ,height: 126)
                .foregroundStyle(.baeminGray200)
            Spacer()
                .frame(height: 12)
            HStack(alignment: .center,spacing: 0) {
                Image(.baeminTime)
                Spacer()
                    .frame(width: 2)
                Text("최근 \(model.count)번 주문한 가게")
                    .font(.pretendard(.body_r_12))
                    .foregroundStyle(.baeminBlue)
            }
            Spacer()
                .frame(height: 9)
            HStack(spacing: 0) {
                Text(model.title)
                    .lineLimit(1)
                    .font(.pretendard(.head_b_14))
                    .foregroundStyle(.baeminBlack)
                Spacer()
                
                Image(.baeminStar)
                Text(String(format: "%.1f",model.star))
                    .font(.pretendard(.body_r_12))
                    .foregroundStyle(.baeminGray600)
                Spacer()
                    .frame(width: 1)
                Text("(\(model.reviewCount))")
                    .font(.pretendard(.body_r_12))
                    .foregroundStyle(.baeminGray600)
                
            }
            Spacer()
                .frame(height: 7)
            HStack(spacing: 0) {
                Image(.baeminW)
                Text(model.deliveryTime)
                    .font(.pretendard(.body_r_13))
                    .foregroundStyle(.baeminBlack)
                Spacer()
                    .frame(width: 6)
                if model.isFreeDelivery{
                    Image(.baminClub)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 12)
                    Spacer()
                        .frame(width: 1)
                    Text("무료배달")
                        .font(.pretendard(.head_b_14))
                        .foregroundStyle(.baeminPurple)
                }
                
            }
            Spacer()
                .frame(height: 7)
            HStack(spacing: 4) {
                ForEach(model.tags, id: \.self) { tag in
                    BaeminTagView(tagType: tag)
                }
            }
        }
        .frame(width: 188)
    }
}

#Preview {
    RecentOrdersListRowView(model: RecentOrderModel(count: 1, title: "ASAP PIZZA 구로디지털단", star: 5.0,reviewCount: 404 ,deliveryTime: "31~46분", isFreeDelivery: true, tags: [.baeminClub,.pickupAvailable]))
}
