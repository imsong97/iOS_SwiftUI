//
//  NavTextView.swift
//  #1
//
//  Created by YunHo on 2021/04/20.
//

import SwiftUI

struct NavTextView: View {
    
    // @Binding -> 데이터 연동
    @Binding
    var isAct: Bool
    
    //바인딩 시 init생성자 필수 -> 초기값 설정
    init (isAct: Binding<Bool> = .constant(true)){
        _isAct = isAct
    }
    
    var body: some View {
        Spacer() // 공간 넓혀줌
        Text("Navigation View").padding(10)
        Text("활정화 상태: \(String(isAct))").foregroundColor(self.isAct ? Color.red : Color.green)
        Spacer()
    }
}

//struct NavTextView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavTextView()
//    }
//}
