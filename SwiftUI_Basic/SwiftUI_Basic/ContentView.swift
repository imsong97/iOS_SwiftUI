//
//  ContentView.swift
//  SwiftUI_Basic
//
//  Created by YunHo on 2021/04/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(){ // 스크롤뷰
            
            VStack (spacing: 20){ // Vertical, spacing: 간격, alignment: 정렬
                
                Divider() // 간격 줄 위치에 넣음
                
                Text("Hello, world!") // 텍스트 뷰
                    .padding() // 값 없으면 시스템기본값
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/) // 라인 제한, nil은 제한 없음
                    .truncationMode(.head) // 텍스트 일부 생략 head, middle, tail
                    .font(.headline)
                    .foregroundColor(.black)
    //                .background(Color.white)
        //            .background(Image("파일이름").resizable().frame(~)) 이미지로 배경
                    .multilineTextAlignment(.center) // 여러줄 정렬
                    .lineSpacing(10.0) // 줄간격
                    .background(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)) // 그라데이션
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) // safe area 넘어서 사용
                
        //         날짜 포멧
                Text("날짜 포멧: \(dueDate, formatter: Self.taskDateFormat)")
                
                
                // 이미지
    //            Image("파일이름")
    //                .resizable() // 크기변경
    //                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/) // 자동 맞추기
                
        //        Image(systemName: "circle") 내장 이미지 사용
        //            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                // UIImage 불러오기
        //        guard let img = UIImage(named: "파일이름") else {
        //            fatalError("fail")
        //        }
        //        return Image(uiImage: UIImage)
                
                
                // 도형 그리기
                Rectangle() // Circle도 가능
                    .fill(Color.blue)
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                // 버튼
                Button(action: {
                    // action
                    self.actionBtn = true
                }){
                    // display
                    Text("버튼이름")
                }
                // ActionSheet
                .actionSheet(isPresented: $actionBtn, content: {
                    ActionSheet(title: Text("제목"), message: Text("내용"),
                                buttons: [.default(Text("Dismiss")), .cancel(Text("Cancel"))])
                })
                
                
                // 텍스트 필드
                TextField("placeholder", text: $text)
                    .textFieldStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Text Field Style@*/DefaultTextFieldStyle()/*@END_MENU_TOKEN@*/) // 스타일
                // 비밀번호 텍스트 필드
                SecureField("pw placeholder", text: $text)
                
                
                // Picker
                Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("제목"), content: {
                    // selection: 바인딩변수, label: 뷰
                    ForEach(0..<2){ _ in
                        Text("1")
                    }
                })
                
                
                // Slider
                Slider(value: $slider, in: 0...10, step: 1) // value: 바인딩값, in: 범위, step: 증감
                
                
                // Stepper
                Stepper("제목", value: $slider, in: 0...10)
            }
    //        HStack {
    //            // Horizental
    //        }
    //        ZStack {
    //            // 뷰를 겹치게 함
    //        }
    //        Group{
    //            // 다양한 뷰 리턴
    //            // ex) 조건문에서 t/f에 따라 뷰 다르게 리턴해야 할 때
    //
    //            // Group 대신 return AnyView(뷰) 로 대체 가능
    //        }
        }
    
        
        // 폼
        Form{
            Section(footer: Text("footer")){
                Toggle(isOn: $toggling, label: {
                    Text("Label 1")
                })
            }
            Section{
                Toggle(isOn: $toggling, label: {
                    Text("Label 2")
                })
            }
        }
        
        
        // 탭 뷰
        TabView {
            ContentView().tabItem {
                Image(systemName: "list.dash") // 버튼에 들어갈 이미지
                Text("Menu 1") // 탭 이름
            }
            ContentView().tabItem {
                Image(systemName: "pencil")
                Text("Menu 2")
            }
        }
    }
    
    
    // 날짜 포멧 텍스트
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    var dueDate = Date()
    
    // 텍스트필드 변수
    @State var text = ""
    
    // 액션시트 변수
    @State var actionBtn = false
    
    // 토글 변수
    @State var toggling = false
    
    // 슬라이더 변수
    @State var slider:Double = 0
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "기기 이름")) // 미리보기 기기 변경
//            .environment(\.colorScheme, .dark) // 다크모드
        
        // 여러개 기기 띄우기
        /*
         Group{
             ContentView()
                 .previewDevice(PreviewDevice(rawValue: "기기 이름"))
             ContentView()
                 .previewDevice(PreviewDevice(rawValue: "기기 이름"))
         }
         */
    }
}
