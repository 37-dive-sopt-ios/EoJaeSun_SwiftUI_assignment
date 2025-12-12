//
//  MainTabView.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/12/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Tab("홈", image: "homIcon"){
                HomeView()
            }
            Tab("장보기·쇼핑", image: "shoppingIcon"){
                Color.red
            }
            Tab("찜", image: "heartIcon"){
                Color.blue
            }
            Tab("주문내역", image: "orderIcon"){
                Color.yellow
            }
            Tab("마이배민", image: "faceIcon"){
                Color.green
            }
        }
        .tint(.baeminBlack)
    }
}

#Preview {
    MainTabView()
}
