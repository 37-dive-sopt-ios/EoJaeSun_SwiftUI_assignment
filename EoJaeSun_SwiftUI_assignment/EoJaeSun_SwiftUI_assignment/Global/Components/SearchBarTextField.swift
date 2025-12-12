//
//  SearchBarTextField.swift
//  EoJaeSun_SwiftUI_assignment
//
//  Created by 어재선 on 12/9/25.
//

import SwiftUI

struct SearchBarTextField: View {
    @Binding var text: String
    var body: some View {
        HStack {
            TextField("찾아라! 맛있는 음식과 맛집", text: $text)
                .font(.pretendard(.body_r_14))
                .padding(.vertical,13)
            Spacer()
            Image(.baeminSearchIcon)
        }
        
        .padding(.horizontal,17)
        .frame(height: 40)
        .overlay {
            RoundedRectangle(cornerRadius: 50)
                .stroke(.baeminBlack, lineWidth: 1)
            
        }
        .background(Color.baeminWhite)
        .cornerRadius(50)
        .padding(.horizontal,16)
        .background(Color.baeminBackgroundWhite)
      
        
    }
}

#Preview {
    SearchBarTextField(text: Binding.constant(""))
}
