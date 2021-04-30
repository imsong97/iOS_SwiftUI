//
//  ContentView.swift
//  #8
//
//  Created by YunHo on 2021/04/30.
//

import SwiftUI

struct ContentView: View {
    
    // @Environment : View의 환경이 바뀔 때 감지 -> 라이트모드/다크모드 감지
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        ZStack{
            Theme.myBackground(forScheme: scheme) // 감지한 값을 넘겨줌
            
            VStack(spacing: 50){
                Button(action: {}, label: {
                    Text("Button 1")
                        .modifier(MyStyle()) // 공통된 스타일을 적용 -> ViewModifier 사용
                })
                
                Button(action: {}, label: {
                    Text("Button 2")
                        .modifier(MyStyle()) // 공통된 스타일을 적용 -> ViewModifier 사용
                })
                
                Button(action: {}, label: {
                    Text("Button 3")
                        .myStyle() // 공통된 스타일을 적용 -> extension 사용
                })
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

// View Modifier: 공통된 스타일을 적용함
struct MyStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .stroke(lineWidth: 10).foregroundColor(.red))
    }
}

// View Modifier처럼 사용하는 다른 방법: extension
extension View {
    func myStyle() -> some View {
        modifier(MyStyle())
    }
}

// 모드에 따라 색 다르게
struct Theme {
    static func myBackground(forScheme scheme: ColorScheme) -> Color {
        let light = Color.white
        let dark = Color.black
        
        switch scheme {
        case .light:
            return light
        case .dark:
            return dark
        default:
            return light
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
