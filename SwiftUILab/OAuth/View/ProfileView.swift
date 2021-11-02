import SwiftUI

struct ProfileView: View {
    // TODO: 임시 데이터
    @State var id: String = ""
    @State var name: String = ""
    @State var email: String = ""
    @State var avatarImage: String = ""
    
    
    var body: some View {
        VStack {
            Form {
                Section {
                    HStack {
                        Spacer()
                        
                        AsyncImage(url: URL(string: avatarImage)) { phase in
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
                    Text("아이디: \(id)")
                    Text("이름: \(name)")
                    Text("이메일: \(email)")
                }
                
                Section {
                    Button {
                        print("새로고침 버튼 클릭")
                    } label: {
                        Text("새로고침")
                    }

                }
            }
        }
        .navigationTitle("내 프로필")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#if DEBUG
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
#endif
