//
//  ContentView.swift
//  #7
//
//  Created by YunHo on 2021/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var select = 0
    
    let colorArr = ["레드", "그린", "블루"]
    
    func changeColor(index: Int) -> Color {
        switch index {
        case 0:
            return Color.red
        case 1:
            return Color.green
        case 2:
            return Color.blue
        default:
            return Color.red
        }
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            
            Circle()
                .foregroundColor(self.changeColor(index: select))
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text("선택된 색: \(colorArr[select])")
            
            Picker("Title", selection: $select, content: {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            })
            
            Picker("Title", selection: $select, content: {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            })
            .pickerStyle(SegmentedPickerStyle()) // 피커 스타일
        }
        .padding(20)
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
