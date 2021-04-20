//
//  ContentView.swift
//  #5
//
//  Created by YunHo on 2021/04/20.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct ContentView: View {
    
    @State
    var index: Index = .one
    
    var body: some View {
        
        GeometryReader{ geometryReader in // LinearLayout weight과 같이 비율로 맞춤
            
            VStack{
                
                Button(action: {
                    self.index = .one
                }){
                    Text("1")
                        .frame(height: geometryReader.size.height / 3)
                        .background(Color.red)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal, self.index == .one ? 50 : 0)
                        .foregroundColor(.white)
                }
                
                Button(action: {
                    self.index = .two
                }, label: {
                    Text("2")
                        .frame(height: geometryReader.size.height / 3)
                        .background(Color.blue)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .padding(.horizontal, self.index == .two ? 50 : 0)
                })
                
                Button(action: {
                    self.index = .three
                }, label: {
                    Text("3")
                        .frame(height: geometryReader.size.height / 3)
                        .background(Color.green)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .padding(.horizontal, self.index == .three ? 50 : 0)
                })
                
            }
            
        }.background(Color.yellow)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
