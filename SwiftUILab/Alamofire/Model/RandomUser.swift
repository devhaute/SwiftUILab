import Foundation

struct RandomUser: Identifiable, Codable {
    var id = UUID()
    let name: Name
    let photo: Photo
    
    private enum CodingKeys: String, CodingKey {
        case name
        case photo = "picture"
    }
}

struct Name: Codable {
    let title: String
    let first: String
    let last: String
}

struct Photo: Codable {
    let large: String
    let medium: String
    let thumbnail: String
}

struct Info: Codable {
    let seed: String
    let resultsCount: Int
    let page: Int
    let version: String
    
    private enum CodingKeys: String, CodingKey {
        case seed, page, version
        case resultsCount = "results"
    }
}

struct RandomUserResponse: Decodable, CustomStringConvertible {
    let results: [RandomUser]
    let info: Info
    
    var description: String {
        "result.count: \(results.count) / info: \(info.seed)"
    }
}
