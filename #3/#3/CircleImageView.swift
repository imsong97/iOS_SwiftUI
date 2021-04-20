//
//  CircleImageView.swift
//  #3
//
//  Created by YunHo on 2021/04/20.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
//        Image(systemName: "bolt.circle")
//            .font(.system(size: 200))
//            .foregroundColor(.yellow)
        Image("image")
            .resizable()
            .aspectRatio(contentMode: .fill) // 비율 조정, .scaledToFit()
            .frame(width: 400, height: 400) // 크기 조정
//            .clipped() // (크기만큼) 잘라내기
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/) // 모양 지정
            .overlay( // 테두리, padding도 가능
                Circle().stroke(Color.green, lineWidth: 10)
            )
            .overlay( // 여러개 overlay 가능
                Circle().stroke(Color.blue, lineWidth: 10).padding(20)
            )
            .overlay(Circle().foregroundColor(.black).opacity(0.1)) // 이미지 명암 조절, 1이 100%
            .overlay(Text("Image").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)) // 이미지에 글씨 추가
            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/) // 이미지에 그림자 추가
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
