//
//  ContentView.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/8/25.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(spacing: 0, pinnedViews: [.sectionHeaders]) {
                CustomNavigationBar()
                Spacer()
                    .frame(height: 10)
                Section(header: SearchBarTextField(text: $searchText)){
                    Spacer()
                        .frame(height: 24)
                    VStack(spacing: 0) {
                        bannerView
                        Spacer()
                            .frame(height: 27)
                        CategoryView()
                    }
                    .background {
                        LinearGradient(
                            colors: [.baeminBackgroundWhite, .baeminMint300],
                            startPoint: .top,
                            endPoint: UnitPoint(x: 0.5, y: 0.3)
                        )
                    }
                    customDivider
                    MartListView()
                    customDivider
                    AdView()
                    customDivider
                }
                
                
            }
            
            Spacer()
        }
        .background(Color.baeminBackgroundWhite)
        .overlay(alignment: .top) {
            Color.baeminBackgroundWhite
                .ignoresSafeArea(edges: .top)
                .frame(height: 0)
        }
        
        
    }
    
    @ViewBuilder
    private var bannerView: some View {
        VStack {
            HStack(spacing: 0) {
                Image(.beaminBmart)
                Spacer()
            }
            HStack(spacing: 0){
                Text("전상품 쿠폰팩 + 60%특가")
                    .font(.pretendard(.head_b_16))
                Image(.beaminChevronRight)
                Spacer()
            }
        }
        .padding(.horizontal, 16)
    }
    
    @ViewBuilder
    private var customDivider: some View {
        Rectangle()
            .frame(height: 10)
            .foregroundStyle(.baeminBackgroundWhite)
    }
}

// MARK: - CategoryView

private struct CategoryView: View {
    @State var selectedCategory: CategoryType = .foodDelivery
    fileprivate var body: some View {
        VStack(spacing: 0) {
            CategoryTopView(selectedCategory: $selectedCategory)
            CategoryListView(selectedCategory: $selectedCategory)
            CategoryBottomView()
            
            
            
        }.background {
            Rectangle()
                .clipShape(
                    UnevenRoundedRectangle(
                        topLeadingRadius: 10,
                        bottomLeadingRadius: 0,
                        bottomTrailingRadius: 0,
                        topTrailingRadius: 10
                    )
                )
                .foregroundStyle(.baeminWhite)
                .shadow(color: .baeminMint300.opacity(0.25), radius: 4, x: 0 ,y: -4)
        }
    }
}

// MARK: - CategoryTopView

private struct CategoryTopView: View {
    @Binding var selectedCategory: CategoryType
    
    fileprivate var body: some View {
        
        VStack(spacing: 0) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(CategoryType.allCases, id: \.self) { categorry in
                        VStack(spacing: 10) {
                            Text(categorry.rawValue)
                                .font(.pretendard(.head_b_18))
                                .foregroundStyle(categorry == selectedCategory ? .baeminBlack : .baeminGray300)
                            if categorry == selectedCategory {
                                Rectangle()
                                    .frame(height: 3)
                            } else {
                                Rectangle()
                                    .frame(height: 3)
                                    .foregroundStyle(.clear)
                            }
                        }
                        .fixedSize()
                        .onTapGesture {
                            withAnimation(.spring(response: 0.4, dampingFraction: 0.8)) {
                                selectedCategory = categorry
                            }
                        }
                    }
                }
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
                .animation(.spring(duration: 0.3), value: selectedCategory)
            }
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(.baeminGray200)
        }
        
    }
}

// MARK: - CategoryListView
private struct CategoryListView: View {
    @Binding var selectedCategory: CategoryType
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 5)
    
    fileprivate var body: some View {
        
        TabView(selection: $selectedCategory) {
            ForEach(CategoryType.allCases, id: \.self) { category in
                LazyVGrid(columns: columns) {
                    ForEach(0..<category.menus.count, id: \.self) { index in
                        MenuItemView(text: category.menus[index])
                    }
                }
                .padding([.top],12)
                .padding(.horizontal, 16)
                .padding(.bottom, 21)
                .tag(category)
            }
        }
        .frame(height: 220)
        .tabViewStyle(.page(indexDisplayMode: .never))
        .animation(.easeInOut(duration: 0.3), value: selectedCategory)
    }
}

// MARK: - MenuItemView
private struct MenuItemView: View {
    let text: String
    fileprivate var body: some View {
        VStack(spacing: 6) {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 58,height: 58)
                .foregroundStyle(.baeminBackgroundWhite)
            
            Text(text)
                .font(.pretendard(.body_r_14))
                .fixedSize()
        }
    }
}

// MARK: - CategoryBottomView
private struct CategoryBottomView: View {
    fileprivate var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(.baeminBackgroundWhite)
            HStack(alignment: .center,spacing: 0) {
                Spacer()
                Text("음식배달")
                    .font(.pretendard(.head_b_14))
                Text("에서 더보기")
                    .font(.pretendard(.body_r_14))
                Spacer()
                    .frame(width: 4)
                Image(.beaminChevronRight)
                Spacer()
            }
            .padding(.vertical, 10)
        }
    }
}

// MARK: - MartListView

private struct MartListView: View {
    fileprivate var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 9) {
                ForEach(MartType.allCases, id: \.self) { mart in
                    MenuItemView(text: mart.rawValue)
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 11)
        .background(Color.baeminWhite)
    }
}

// MARK: - AdView

private struct AdView: View {
    fileprivate var body: some View {
        Rectangle()
            .scaledToFit()
            .foregroundStyle(.baeminGray200)
    }
}

#Preview {
    HomeView()
}
