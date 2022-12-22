//
//  SignUpView.swift
//  RecordLyric
//
//  Created by TAEHYOUNG KIM on 2022/12/22.
//

import SwiftUI

struct SignUpView: View {
    @State var signUpNickName: String = ""
    @State var signUpID: String = ""
    @State var signUpPW: String = ""
    @Binding var signUpSheet: Bool
    @EnvironmentObject var userStore: UserStore
    @State var isDuplicate: Bool = false
//    var duplicationConfirm: Bool {
//        get {
//            var bool = false
//            for user in userStore.users {
//                if user.userID == signUpID {
//                    bool = true
//                }
//            }
//            return bool
//        }
//    }
    var body: some View {
        VStack {
            TextField(text: $signUpNickName) {
                Text("닉네임을 입력하세요")
            }
            .modifier(LoginViewTextFieldStyle())
            
            HStack {
                TextField(text: $signUpID) {
                    Text("가입할 아이디를 입력하세요")
                }
                .modifier(LoginViewTextFieldStyle())
                Button {
                    for user in userStore.users {
                        if user.userID == signUpID {
                            isDuplicate = true
                        }
                    }
                    print(userStore.users)
                } label: {
                    Text("중복확인")
                }
                .padding(.trailing, 30)
                .alert("중복된 아이디입니다", isPresented: $isDuplicate) {
                    Button("OK", role: .cancel) {
                        isDuplicate = false
                    }
                   }
            }
            
            SecureField(text: $signUpPW) {
                Text("가입할 비밀번호를 입력하세요")
            }
            .modifier(LoginViewTextFieldStyle())
            
            
            Button {
                let signUpUserInfo = User(nickName: signUpNickName, userID: signUpID, userPW: signUpPW)
                userStore.users.append(signUpUserInfo)
                signUpSheet.toggle()
            } label: {
                Text("가입하기")
            }
            
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(signUpSheet: .constant(true))
            .environmentObject(UserStore())
    }
}
