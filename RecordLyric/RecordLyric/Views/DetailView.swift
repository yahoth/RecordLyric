//
//  DetailView.swift
//  RecordLyric
//
//  Created by TAEHYOUNG KIM on 2022/12/11.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.colorScheme) var colorScheme
    var info: Info
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                HStack {
                    Text("❝")
                        .font(.largeTitle)
                    Spacer()
                }
                Text(info.lyric)
                    .font(.title3)
                HStack {
                    Spacer()
                    Text("❞")
                        .font(.largeTitle)
                }
                HStack {
                    Spacer()
                    Text("-\(info.singer)의 \(info.song) 中-")
                        .foregroundColor(.secondary)
                        .font(.caption)
                }

            }
            .frame(height: 300)
            .padding()
            .background(Color.brown)
            
            HStack {
                Text("yahoth")
                    .fontWeight(.bold)
                Spacer()
            }
            Text(info.description)
            Spacer()
            HStack {
                Image(info.imageName ?? "한번더이별")        .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                VStack(alignment: .leading) {
                    NavigationLink {
                        SingerView()
                    } label: {
                        Text(info.song)
                            .fontWeight(.bold)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    }
                    NavigationLink {
                        SongView()
                    } label: {
                        Text(info.singer)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    }
                }
                Spacer()
                Button {
                    
                } label: {
                    Image("applemusic")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                Button {
                    
                } label: {
                    Image("youtubemusic")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                Button {
                    
                } label: {
                    Image("melon")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                
            }
            Spacer()
        }
        .navigationTitle("DetailView")
        .padding()
        
        
    }
    
}
    

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            DetailView(info: ModelStore().models[1])
        }
    }
}
