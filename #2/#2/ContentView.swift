//
//  ContentView.swift
//  #2
//
//  Created by YunHo on 2021/04/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        MyWebView(urlToLoad: "https://www.naver.com")
        
        NavigationView {
            HStack {
                NavigationLink(
                    destination: MyWebView(urlToLoad: "https://www.naver.com")
                                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ){
                    Text("네이버")
                }
                NavigationLink(
                    destination: MyWebView(urlToLoad: "https://www.google.com")
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ){
                    Text("구글")
                }
                NavigationLink(
                    destination: MyWebView(urlToLoad: "https://www.daum.net")
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ){
                    Text("다음")
                }
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
