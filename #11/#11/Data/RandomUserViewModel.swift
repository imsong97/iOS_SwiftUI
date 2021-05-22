//
//  RandomUserViewModel.swift
//  #11
//
//  Created by YunHo on 2021/05/22.
//

import Foundation
import Combine
import Alamofire

class RandomUserViewModel: ObservableObject {
    
    var subscription = Set<AnyCancellable>() // 메모리 삭제
    
    @Published var randomUsers = [RandomUser]()
    
    var baseUrl = "https://randomuser.me/api/?results=100"
    
    init() {
        print("init viewModel")
        
        fetchRandomUsers()
    }
    
    func fetchRandomUsers() {
        print("fetchRandomUsers")
        
        AF.request(baseUrl).publishDecodable(type: ResponseData.self)
            .compactMap{ $0.value }
            .map{ $0.results }
            .sink(receiveCompletion: {
                completion in print("stream complete")
            }, receiveValue: {
                receiveValue in print("receive: \(receiveValue.count)")
                self.randomUsers = receiveValue
            }).store(in: &subscription)
    }
}
