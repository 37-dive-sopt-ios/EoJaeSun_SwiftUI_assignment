//
//  CustomNavigationBar.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/9/25.
//

import SwiftUI

struct CustomNavigationBar: View {
    var body: some View {
        HStack(spacing: 0) {
            Text("우리집")
                .font(.pretendard(.head_b_16))
            Spacer()
                .frame(width: 3)
            Image(.baeminDowntriangleIcon)
            Spacer()
            
            HStack(spacing: 12) {
                Button{
                    
                } label: {
                    Image(.baeminDiscountIcon)
                }
                
                Button {
                    
                } label: {
                    Image(.baeminNotificationIcon)
                }
                
                Button {
                
                } label: {
                    Image(.baeminShoppingcartIcon)
                }
            }
        }.padding(.horizontal, 16)
    }
}

#Preview {
    CustomNavigationBar()
}
