import SwiftUI

struct OtherUserProfileView: View {
    var userData: UserData
    
    var body: some View {
        VStack {
            Form {
                Section {
                    HStack {
                        Spacer()
                        AsyncImage(url: URL(string: userData.avatar)) { phase in
                            switch phase {
                            case .empty:
                                ProgressView()
                                    .frame(width: 250, height: 250)
                            case .success(let image):
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 250, height: 250)
                            case .failure:
                                Image(systemName: "person.fill.questionmark")
                                    .resizable()
                                    .scaledToFit()
                                    .padding()
                                    .frame(width: 250, height: 250)
                            @unknown default:
                                EmptyView()
                                    .frame(width: 250, height: 250)
                            }
                        }
                        Spacer()
                    }
                }
                
                Section {
                    Text("아이디: \(userData.id)")
                } header: {
                    Text("아이디")
                        .font(.callout)
                }
                
                Section {
                    Text("이름: \(userData.name)")
                } header: {
                    Text("이름")
                        .font(.callout)
                }
                
                Section {
                    Text("이메일: \(userData.email)")
                } header: {
                    Text("이메일")
                        .font(.callout)
                }
            }
        }
        .navigationTitle(userData.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
