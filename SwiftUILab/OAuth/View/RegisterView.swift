import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @State private var email = ""
    
    @State private var password = ""
    @State private var passwordCheck = ""

    var body: some View {
        VStack {
            Form {
                Section {
                    TextField("이름을 입력해주세요", text: $name)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                } header: {
                    Text("이름")
                }
                
                Section {
                    TextField("이메일", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                } header: {
                    Text("이메일")
                }
                
                Section {
                    SecureField("비밀번호", text: $password)
                        .keyboardType(.default)
                    SecureField("비밀번호 확인", text: $passwordCheck)
                        .keyboardType(.default)
                } header: {
                    Text("비밀번호")
                }
                
                Section {
                    HStack {
                        Spacer()
                        Button {
                            print("회원가입 버튼 클릭")
                        } label: {
                            Text("회원가입하기")
                        }
                        Spacer()
                    }

                }
            }
        }
        .navigationTitle("회원가입")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#if DEBUG
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
#endif
