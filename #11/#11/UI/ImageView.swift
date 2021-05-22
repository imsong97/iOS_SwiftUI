//
//  ImageView.swift
//  #11
//
//  Created by YunHo on 2021/05/22.
//

import Foundation
import SwiftUI
import URLImage



struct ImageView: View {
    let url: URL
    
    var body: some View {
        URLImage(url) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .frame(width: 50, height: 60)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.init(.yellow), lineWidth: 2))
    }
}

//struct ImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        let url = URL(string: "https://randomuser.me/api/portraits/men/42.jpg")!
//        ImageView(url: url)
//    }
//}
