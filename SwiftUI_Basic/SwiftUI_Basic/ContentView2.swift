//
//  ContentView2.swift
//  SwiftUI_Basic
//
//  Created by YunHo on 2021/04/14.
//

import SwiftUI

struct Family: View{
    var name: String
    var body: some View {
        Text("\(name)")
    }
}

struct ContentView2: View {
    @State var users = ["SONG", "YUN", "HO"]
    
    var body: some View {
        NavigationView{ // 네비게이션 뷰, 순서 편집 기능
            
            List { // 리스트 뷰
                Section(header: Text("Header")){ // header 추가
                    ForEach(users, id: \.self) {
                        user in Text(user)
                    }
                    .onDelete(perform: delete) // 삭제 기능
                    .onMove(perform: move) // 순서 편집 기능
                }
                
    //            Family(name: "SONG")
    //            Family(name: "YUN")
    //            Family(name: "HO")
            }
            .navigationBarItems(trailing: EditButton()) // 순서 편집 기능
        }
    }
    
    func delete(at offsets: IndexSet){
        if let first = offsets.first{
            users.remove(at: first)
        }
    }
    
    func move(from source: IndexSet, to destination: Int){
        let reversedSource = source.sorted()
        for index in reversedSource.reversed() {
            users.insert(users.remove(at: index), at: destination)
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
            .previewDevice(PreviewDevice(rawValue: "iPhone XR"))
    }
}
