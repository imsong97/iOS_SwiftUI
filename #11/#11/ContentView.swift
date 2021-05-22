//
//  ContentView.swift
//  #11
//
//  Created by YunHo on 2021/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var randomUserViewModel = RandomUserViewModel()
    
    var body: some View {
        List(randomUserViewModel.randomUsers) {
            user in RandomUserView(user)
        }
//        List(0...50, id: \.self) { index in
//            RandomUserView()
//        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
