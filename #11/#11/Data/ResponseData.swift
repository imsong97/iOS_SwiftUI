//
//  ResponseData.swift
//  #11
//
//  Created by YunHo on 2021/05/22.
//

import Foundation

struct RandomUser: Codable, Identifiable {
    // Identifiable -> 식별이 가능하게 하는 프로토콜, 고유값이 있으므로 생략이 가능하게 한다
    var id = UUID() // UUID()로 고유값 할당
    var name: Name
    var photo: Photo
    
    private enum CodingKeys: String, CodingKey{
        case name = "name"
        case photo = "picture"
    }
    
    // Dummy 데이터
    static func getDummy() -> Self {
        print("getDummy")
        return RandomUser(name: Name.getDummy(), photo: Photo.getDummy()) // Identifiable -> 고유값이 있으므로 id값 생략이 가능하게 한다
    }
    
    var url: URL {
        get{
            URL(string: photo.medium)!
        }
    }
}

struct Name: Codable, CustomStringConvertible {
    var title: String
    var first: String
    var last: String
    
    var description: String {
        return "[\(title)] \(last) \(first)"
    }
    
    // Dummy 데이터
    static func getDummy() -> Self {
        print("getDummy - Name")
        return Name(title: "Title", first: "First", last: "Last")
    }
}

struct Photo: Codable {
    var large: String
    var medium: String
    var thumbnail: String
    
    // Dummy 데이터
    static func getDummy() -> Self {
        print("getDummy - Photo")
        return Photo(large: "https://randomuser.me/api/portraits/men/42.jpg",
                     medium: "https://randomuser.me/api/portraits/men/42.jpg",
                     thumbnail: "https://randomuser.me/api/portraits/men/42.jpg")
    }
}

struct Info: Codable {
    var seed: String
    var resultCount: Int
    var page: Int
    var version: String
    
    private enum CodingKeys: String, CodingKey{
        case seed = "seed"
        case resultCount = "results"
        case page = "page"
        case version = "version"
    }
}

struct ResponseData: Codable, CustomStringConvertible {
    // Codable: 프로토콜, 자신이나 외부 데이터를 변환할 수 있는 타입 (Decodable + Encodable)
    // CustomStringConvertible: 텍스트적인 표현을 커스터마이즈하는 타입 -> description
    var results: [RandomUser]
    var info: Info
    
    // json Parsing 시 이름을 맞춰주어야함 -> 맞추지 않을경우 CodingKey 사용
    private enum CodingKeys: String, CodingKey{
        case results, info
    }
    
    var description: String {
        return "result.count: \(results.count), info: \(info.seed)"
    }
}
