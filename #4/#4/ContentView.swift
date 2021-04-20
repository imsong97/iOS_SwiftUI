//
//  ContentView.swift
//  #4
//
//  Created by YunHo on 2021/04/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            VStack (alignment: .leading) {
                Rectangle().frame(height: 0)
                Text("스택 1")
                    .padding(.bottom, 5)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("스택 2")
                    .padding(.bottom, 10)
                    .foregroundColor(.secondary)
                HStack{
                    Circle().frame(width: 50, height: 50)
                    Circle().frame(width: 50, height: 50)
                    Circle().frame(width: 50, height: 50)
                    
                    Spacer()
                    
                    Text("확인")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .padding()
                        .frame(width: 80)
                        .background(Color.white)
                        .cornerRadius(20)
                        
                }
            }.padding()
            .background(Color.yellow)
            .cornerRadius(20)
            
            // 뷰 커스텀 하기
            StackView(icon: "flag.fill", title: "스택 Purple", bgColor: Color.purple)
            StackView(icon: "tray.fill", title: "스택 Green", bgColor: Color.green)
            StackView(icon: "book.fill", title: "스택 Blue", bgColor: Color.blue)
            
        }.padding()
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
