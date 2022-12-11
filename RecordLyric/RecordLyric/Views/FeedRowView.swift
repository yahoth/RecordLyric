//
//  FeedRowView.swift
//  RecordLyric
//
//  Created by TAEHYOUNG KIM on 2022/12/11.
//

import SwiftUI

struct FeedRowView: View {
    @Environment(\.colorScheme) var colorScheme

    var info: Info
    var body: some View {
        NavigationLink {
            DetailView(info: info)
        } label: {
            VStack() {
                
                HStack {
                    Text("@yahoth")
                        .fontWeight(.bold)
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    Spacer()
                }
                Divider()
                 
                Text(info.lyric)
                    .font(.title3)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .padding()
                HStack {
                    Spacer()
                    Text("-\(info.singer)의 \(info.song) 中-")
                        .foregroundColor(.secondary)
                        .font(.caption)   
                }
            }
            .padding()
        }
    }
}


struct FeedRowView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            FeedRowView(info: ModelStore().models[0])
        }
    }
}
