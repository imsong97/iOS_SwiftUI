//
//  InputTextView.swift
//  #6
//
//  Created by YunHo on 2021/04/21.
//

import SwiftUI

struct InputTextView: View {
    
    @State private var inputId: String = ""
    @State private var inputPw: String = ""
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 20){
            HStack{
                
                TextField(" ID", text: $inputId)
                    .textFieldStyle(RoundedBorderTextFieldStyle()) // 테두리
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/) // 자동 대문자 설정
                    .disableAutocorrection(true) // 자동수정 기능 끄기
                
                Button(action: {
                    self.inputId = ""
                }, label: {
                    if self.inputId.count > 0 {
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)
                    }
                })
            }
            
            HStack{
                SecureField(" Password", text: $inputPw)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .disableAutocorrection(true)
                
                Button(action: {
                    self.inputPw = ""
                }, label: {
                    if self.inputPw.count > 0 {
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)
                        
                    }
                })
            }
            
        }.padding(50)
    }
}

//struct InputTextView_Previews: PreviewProvider {
//    static var previews: some View {
//        InputTextView()
//    }
//}
