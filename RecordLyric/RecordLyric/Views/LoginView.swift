//
//  LoginView.swift
//  RecordLyric
//
//  Created by TAEHYOUNG KIM on 2022/12/22.
//

import SwiftUI

struct LoginView: View {
    @State var textID: String = ""
    @State var textPW: String = ""
    @State var signUpSheet: Bool = false
    @EnvironmentObject var userStore: UserStore

    var body: some View {
        VStack {
            HStack {
                VStack {
                    TextField(text: $textID) {
                        Text("아이디를 입력하세요")
                    }
                    .modifier(LoginViewTextFieldStyle())
                    SecureField(text: $textPW) {
                        Text("비밀번호를 입력하세요")
                    }
                    .modifier(LoginViewTextFieldStyle())

                }
                
                Button {
                    
                } label: {
                    Text("Login")
                }
                .padding(.trailing, 20)
                
            }
            Button {
                signUpSheet.toggle()
            } label: {
                Text("Sign Up")
            }

        }
        .fullScreenCover(isPresented: $signUpSheet) {
            SignUpView(signUpSheet: $signUpSheet)
        }
    }
}

struct LoginViewTextFieldStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .padding()
            .background(Color.gray.opacity(0.1))
            .clipped()
            .cornerRadius(10)
            .padding(.horizontal, 15)

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(UserStore())
    }
}
