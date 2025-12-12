//
//  DiscountSoreListView.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/12/25.
//

import SwiftUI

struct DiscountStoreListView: View {
    var body: some View {
        VStack(alignment:.center ,spacing: 0) {
            HStack(spacing: 0) {
                VStack(alignment: .leading,spacing: 12) {
                    
                    HStack(spacing: 0){
                        Text("무조건 할인하는 가게")
                            .font(.pretendard(.title_sb_18))
                            .foregroundStyle(.baeminBlack)
                        Spacer()
                            .frame(width: 3)
                        Image(.baeminI)
                            .foregroundStyle(.baeminGray800)
                    }
                    
                    Text("2천원 이상 똔느 15% 이상 할인중")
                        .font(.pretendard(.body_r_14))
                        .foregroundStyle(.baeminGray300)
                }
                Spacer()
                Image(.baeminBw)
            }
            .padding(.horizontal,16)
            .padding(.bottom, 11)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 10) {
                    ForEach(DiscountStoreModel.mockData, id: \.title) { model in
                        DiscountStoreListRowView(model: model)
                    }
                }
                .padding(.horizontal,16)
            }
            .frame(height: 245)
            
            Button {
                
            } label: {
                HStack(spacing: 0) {
                    Text("할인하는 가게")
                        .font(.pretendard(.head_b_14))
                    Text("더보기")
                        .font(.pretendard(.body_r_14))
                    Spacer()
                        .frame(width: 4)
                    Image(.beaminChevronRight)
                }
                .foregroundStyle(.baeminBlack)
                .padding(.vertical, 10)
                .padding(.horizontal, 12)
                .overlay(alignment: .bottom) {
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(.baeminGray200, lineWidth: 1)
                    
                }
            }
           
            
        }
        .padding([.top,.bottom], 20)
        .background(Color.baeminWhite)
        
    }
}

#Preview {
    DiscountStoreListView()
    
}

