//
//  AddingView.swift
//  RecordLyric
//
//  Created by TAEHYOUNG KIM on 2022/12/11.
//

import SwiftUI

struct AddingView: View {
    @Environment(\.colorScheme) var colorScheme

    @Environment(\.presentationMode) var postingSave
    @EnvironmentObject var modelStore: ModelStore
    @State private var inputSong: String = ""
    @State private var inputSinger: String = ""
    @State private var inputLyric: String = ""
    @State private var inputDescription: String = ""
    @State private var isPresented: Bool = false
    var body: some View {
        VStack {
            TextField(text: $inputSong, axis: .vertical) {
                Text("노래 제목을 입력하세요")
            }
            Divider()
            TextField(text: $inputSinger, axis: .vertical) {
                Text("부른 이를 입력하세요")
            }
            Divider()
            
            TextField(text: $inputLyric, axis: .vertical) {
                Text("가사를 입력하세요")
            }
            Divider()
            
            TextField(text: $inputDescription, axis: .vertical) {
                Text("코멘트를 입력하세요")
            }
        }
        .padding()
        .navigationTitle("AddingView")
        .toolbar {
            Button {
                postingSaveButtonPressed()
            } label: {
                Text("완료")
                    .alert("입력 후 완료를 눌러주세요", isPresented: $isPresented) {
                    }
            }
           
        }
    }
    func postingSaveButtonPressed() {
        if inputLyric.count > 1 {
            postingSave.wrappedValue.dismiss()
            modelStore.models.insert(Info(id: UUID().uuidString, singer: inputSinger, song: inputSong, lyric: inputLyric, description: inputDescription, imageName: ""), at: 0)
            
        } else {
            isPresented = true
        }
    }
    
}
struct AddingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AddingView()
                .environmentObject(ModelStore())
        }
    }
}
