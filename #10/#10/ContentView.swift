//
//  ContentView.swift
//  #10
//
//  Created by YunHo on 2021/05/19.
//

import SwiftUI

let myPets = ["Dog", "Cat", "Mouse"]

struct ContentView: View {
    @State private var selected = 0
    
    var body: some View {
        NavigationView{
            Text("\(myPets[selected])")
                .font(.title)
                .padding()
                .navigationTitle("Hello")
                .toolbar(content: {
                    ToolbarItem(placement: .primaryAction, content: { // placement -> 위치
                        Menu(content: {
                            Text("Content 1")
                            Text("Content 2")
                            
                            Section{
                                Button(action: {}, label: {
                                    Label("Button 1", systemImage: "flame.fill")
                                })
                            }
                            Section{
                                Button(action: {}, label: {
                                    Label("Button 2", systemImage: "folder")
                                })
                                Button(action: {}, label: {
                                    Label("Button 3", systemImage: "trash")
                                })
                            }
                            
                            Picker(selection: $selected, label: Text("Selection")){
                                ForEach(myPets.indices, id: \.self, content: {
                                    index in Text("\(myPets[index])").tag(index)
                                })
                            }

                            
                            /* 멀티 트레일링 클로저 -> Swift 5.3 이상에서 지원
                             Button{
                                // 액션
                             } label: {
                                // 라벨
                             }
                             */
                        }, label: {
//                            Label( title: { /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/ },
//                                   icon: { /*@START_MENU_TOKEN@*/Image(systemName: "42.circle")/*@END_MENU_TOKEN@*/ })
                            Circle().foregroundColor(.yellow)
                                .frame(width:50, height: 50)
                                .overlay( // 겹치기
                                    Label("더보기", systemImage: "ellipsis")
                                        .font(.system(size: 30))
                                        .foregroundColor(.white)
                                )
                        })
                    })
                })
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
