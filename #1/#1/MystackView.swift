//
//  MystackView.swift
//  #1
//
//  Created by YunHo on 2021/04/20.
//

import SwiftUI


struct MyVstackView: View {
    
    // @Binding -> 데이터 연동
    @Binding
    var isAct: Bool
    
    //바인딩 시 init생성자 필수 -> 초기값 설정
    init (isAct: Binding<Bool> = .constant(true)){
        _isAct = isAct
    }
    
    var body: some View {
        VStack {
             Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
             Text("2!")
               .fontWeight(.bold)
                .font(.system(size: 60))
             Text("3!")
              .fontWeight(.bold)
                .font(.system(size: 60))
        } // Vstack
        .background(isAct ? Color.red : Color.green)
    }
}

// 보여주는 용도
//struct MyVstackView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyVstackView()
//    }
//}

struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
