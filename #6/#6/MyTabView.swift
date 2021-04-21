//
//  MyTabView.swift
//  #6
//
//  Created by YunHo on 2021/04/21.
//

import SwiftUI

struct MyTabView: View {
    
    var title: String
    var bgColor: Color
    
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .font(.largeTitle)
            .background(bgColor)
    }
}

//struct MyTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyTabView()
//    }
//}
