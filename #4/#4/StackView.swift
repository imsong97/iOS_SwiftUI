//
//  StackView.swift
//  #4
//
//  Created by YunHo on 2021/04/20.
//

import SwiftUI

struct StackView: View {
    
    // 뷰 커스텀 하기
    var icon: String
    var title: String
    var bgColor: Color
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Rectangle().frame(height: 0)
            HStack(spacing: 20) {
                Image(systemName: icon)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Text(title)
                    .foregroundColor(.white)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
        }.padding()
        .background(bgColor)
        .cornerRadius(20)
        
    }
}

//struct StackView_Previews: PreviewProvider {
//    static var previews: some View {
//        StackView()
//    }
//}
