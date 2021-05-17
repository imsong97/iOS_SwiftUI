//
//  ContentView.swift
//  #9
//
//  Created by YunHo on 2021/05/17.
//

import SwiftUI
import UIKit
import Introspect // UIKit를 이용하여 Refresh를 도와주는 Pod 라이브러리

struct NameRow: View {
    var name: String

    var body: some View {
        Text("\(name)")
    }
}

// Refresh 액션 클래스 -> UIKit, Objective-C
class RefreshControllHelper {
    var parentContentView: ContentView?
    var refreshControll: UIRefreshControl?
    
    @objc func didRefresh(){
        guard let parentContentView = parentContentView,
              let refreshControll = refreshControll else{ return }
        
        // refresh 딜레이 설정
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
            // DispatchQueue.main -> 메인 스레드
            print("refresh")
            print("refresh 때 할 행동 작성")
            refreshControll.endRefreshing()
        })
    }
}

struct ContentView: View {
    let refreshHelper = RefreshControllHelper()
    
    var body: some View {
        List {
            ForEach(1..<10){ _ in
                NameRow(name: "SONG")
                NameRow(name: "YUN")
                NameRow(name: "HO")
            }
        }
        .introspectTableView{ tableView in
//            tableView.refreshControl = UIRefreshControl()
            let refresh = UIRefreshControl()
            refreshHelper.refreshControll = refresh
            refreshHelper.parentContentView = self
            refresh.addTarget(refreshHelper, action: #selector(RefreshControllHelper.didRefresh), for: .valueChanged)
            tableView.refreshControl = refresh
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
