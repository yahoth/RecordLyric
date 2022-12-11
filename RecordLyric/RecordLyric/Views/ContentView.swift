//
//  ContentView.swift
//  RecordLyric
//
//  Created by TAEHYOUNG KIM on 2022/12/11.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        
        NavigationStack {
            VStack {
                FeedListView()
            }
            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
            .navigationTitle(Text("Feed"))
            .toolbar {
                NavigationLink {
                    AddingView()
                } label: {
                    Text("Add")
                }
            }
//            .toolbarRole(.editor)

        } // End of NavigationStack
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelStore())
    }
}
