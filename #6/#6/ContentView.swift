//
//  ContentView.swift
//  #6
//
//  Created by YunHo on 2021/04/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Text("보여질 화면 1")
                .tabItem {
                    Image(systemName: "airplane")
                    Text("아이템 1")
                }
            Text("보여질 화면 2")
                .tabItem {
                    Image(systemName: "airplane")
                    Text("아이템 2")
                }
            Text("보여질 화면 3")
                .tabItem {
                    Image(systemName: "airplane")
                    Text("아이템 3")
                }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
