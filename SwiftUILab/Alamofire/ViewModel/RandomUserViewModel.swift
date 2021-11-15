import Foundation
import Combine
import Alamofire

class RandomUserViewModel: ObservableObject {
    let baseURL: URL = URL(string: "https://randomuser.me/api/?results=50")!
    var subscription = Set<AnyCancellable>()

    @Published var randomUsers = [RandomUser]()
    
    init() {
        fetchRandomUsers()
    }
    
    func fetchRandomUsers() {
        AF.request(baseURL)
            .publishDecodable(type: RandomUserResponse.self)
            .compactMap({ $0.value })
            .map({ $0.results })
            .sink { completion in
                print("데이터스트림 완료")
            } receiveValue: { receiveUsers in
                DispatchQueue.main.async {
                    self.randomUsers = receiveUsers
                }
            }
            .store(in: &subscription)

    }
}
