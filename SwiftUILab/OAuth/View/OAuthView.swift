import SwiftUI

struct OAuthView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "lock.shield")
                    .font(.system(size: 160))
                
                NavigationLink {
                    LoginView()
                } label: {
                    HStack {
                        Spacer()
                        Text("로그인 하러가기")
                        Spacer()
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                }
                
                NavigationLink {
                    RegisterView()
                } label: {
                    HStack {
                        Spacer()
                        Text("회원가입 하러가기")
                        Spacer()
                    }
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                }
                
                Spacer().frame(height: 40)
                
                NavigationLink {
                    ProfileView()
                } label: {
                    HStack {
                        Spacer()
                        Text("내 프로필 보러가기")
                        Spacer()
                    }
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                }
                
                NavigationLink {
                    Text("사용자 목록화면")
                } label: {
                    HStack {
                        Spacer()
                        Text("사용자 목록 보러가기")
                        Spacer()
                    }
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                }
                
                Spacer()
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
}

struct OAuthView_Previews: PreviewProvider {
    static var previews: some View {
        OAuthView()
    }
}
