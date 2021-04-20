//
//  ZStackView.swift
//  #3
//
//  Created by YunHo on 2021/04/20.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        ZStack {
            
            // 아래로 갈수록 상위의 아이템을 덮어 씌움
            
            Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.red)
                .zIndex(3) // but, 인덱스를 지정해서 순서를 바꿀 수 있음, default값은 0
            // 안드로이드 LinearLayout과 비슷
            
            Rectangle()
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.yellow)
                .zIndex(2)
            
            Rectangle()
                .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.blue)
                .zIndex(1)
        }
    }
}

//struct ZStackView_Previews: PreviewProvider {
//    static var previews: some View {
//        ZStackView()
//    }
//}
