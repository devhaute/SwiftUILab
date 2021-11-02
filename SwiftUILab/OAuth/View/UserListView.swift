import SwiftUI

struct UserListView: View {
    @State private var users: [UserData] = [
        UserData(id: 0, name: "호호호", email: "hohoho@email.com", avatar: "https://cdn.vox-cdn.com/thumbor/JgCPp2BBxETY596wCp50ccosCfE=/0x0:2370x1574/1200x800/filters:focal(996x598:1374x976)/cdn.vox-cdn.com/uploads/chorus_image/image/68870438/Screen_Shot_2020_07_21_at_9.38.25_AM.0.png"),
        UserData(id: 1, name: "호호호2", email: "hohoho2@email.com", avatar: "https://cdn.vox-cdn.com/thumbor/JgCPp2BBxETY596wCp50ccosCfE=/0x0:2370x1574/1200x800/filters:focal(996x598:1374x976)/cdn.vox-cdn.com/uploads/chorus_image/image/68870438/Screen_Shot_2020_07_21_at_9.38.25_AM.0.png"),
        UserData(id: 2, name: "호호호3", email: "hohoho3@email.com", avatar: "https://cdn.vox-cdn.com/thumbor/JgCPp2BBxETY596wCp50ccosCfE=/0x0:2370x1574/1200x800/filters:focal(996x598:1374x976)/cdn.vox-cdn.com/uploads/chorus_image/image/68870438/Screen_Shot_2020_07_21_at_9.38.25_AM.0.png")
    ]

    var body: some View {
        List {
            ForEach(users) { user in
                NavigationLink(destination: OtherUserProfileView(userData: user)) {
                    HStack {
                        AsyncImage(url: URL(string: user.avatar)) { phase in
                            switch phase {
                            case .empty:
                                ProgressView()
                                    .frame(width: 100)
                            case .success(let image):
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100)
                            case .failure:
                                Image(systemName: "person.fill.questionmark")
                                    .resizable()
                                    .scaledToFit()
                                    .padding()
                                    .frame(width: 100)
                            @unknown default:
                                EmptyView()
                                    .frame(width: 100)
                            }
                        }
                        Spacer()
                        VStack(alignment: .leading) {
                            Text(user.name).font(.title)
                            Text(user.email).font(.callout)
                        }
                        Spacer()
                    }
                }
            }
        }
        .navigationTitle("사용자 목록")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#if DEBUG
struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
#endif
