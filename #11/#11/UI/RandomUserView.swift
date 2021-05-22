//
//  RandomUserView.swift
//  #11
//
//  Created by YunHo on 2021/05/22.
//

import SwiftUI

struct RandomUserView: View {
    
    var randomUser: RandomUser
    
    init(_ randomUser: RandomUser){
        self.randomUser = randomUser
    }
    
    var body: some View {
        HStack {
            ImageView(url: randomUser.url)
            Text("\(randomUser.name.description)")
                .fontWeight(.heavy)
                .font(.title2)
                .lineLimit(2)
                .minimumScaleFactor(0.5) // 글자가 늘어나면 자동으로 크기 줄어듦
        }
        .frame(minWidth: 0, idealWidth: .infinity,
               maxWidth: 50, minHeight: 0, alignment: .leading)
        .padding(.vertical)
    }
}

//struct RandomUserView_Previews: PreviewProvider {
//    static var previews: some View {
//        RandomUserView()
//    }
//}
