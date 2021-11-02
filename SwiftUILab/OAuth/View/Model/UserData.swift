import Foundation

struct UserData: Identifiable {
    let uuid = UUID()
    var id: Int
    var name: String
    var email: String
    var avatar: String
}
