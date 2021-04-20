//
//  ContentView.swift
//  #1
//
//  Created by YunHo on 2021/04/20.
//

import SwiftUI

struct ContentView: View {
    
    @State // 값의 변화를 감지
    private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                Spacer() // 공간 넓혀줌
                
                HStack {
//                    MyVstackView()
//                    MyVstackView()
//                    MyVstackView()
                    MyVstackView(isAct: $isActivated) // 바인딩
                    MyVstackView(isAct: $isActivated)
                    MyVstackView(isAct: $isActivated)
                }
                .padding(10)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture { // 탭 제스쳐
        //            self.isActivated.toggle() // toggle() -> true이면 false, false이면 true
                    
                    withAnimation{ // 애니메이션 효과와 함께
                        self.isActivated.toggle()
                    }
                }
                
                // 네비게이션 링크 버튼 -> 화면이동 시
//                NavigationLink(destination: NavTextView()){ // destination:이동할 화면 또는 Text 등등
//                    Text("네비게이션")
//                }
//                .padding(.top, 50)
                NavigationLink(destination: NavTextView(isAct: $isActivated)){ // 바인딩 처리
                    Text("네비게이션")
                }
                .padding(.top, 50)
                
                Spacer()
            }
            .background(Color.gray)
            .edgesIgnoringSafeArea(.all) // safeArea 없애기
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
