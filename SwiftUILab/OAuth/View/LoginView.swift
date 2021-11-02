import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack {
            Form {
                Section {
                    TextField("이메일", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                    SecureField("비밀번호", text: $password)
                        .keyboardType(.default)
                } header: {
                    Text("로그인 정보")
                }
                
                Section {
                    HStack {
                        Spacer()
                        Button {
                            print("로그인 버튼 클릭")
                        } label: {
                            Text("로그인 하기")
                        }
                        Spacer()
                    }

                }
            }
        }
        .navigationTitle("로그인 페이지")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#if DEBUG
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
#endif
