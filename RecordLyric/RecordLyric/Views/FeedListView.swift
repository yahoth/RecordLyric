//
//  FeedListView.swift
//  RecordLyric
//
//  Created by TAEHYOUNG KIM on 2022/12/11.
//

import SwiftUI

struct FeedListView: View {
    @Environment(\.colorScheme) var colorScheme

    @EnvironmentObject var modelStore: ModelStore

    var body: some View {
        ScrollView {
            Form {
                ForEach(Array(modelStore.models.enumerated()), id: \.offset) { (idx, model) in
                    FeedRowView(info: model)
                        .contextMenu {
                            Button {
                                modelStore.models.remove(at: idx)
                            } label: {
                                Text("delete")

                            }

                        }
                }

            }

            .formStyle(.columns)

        }
    }
}


struct FeedListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            FeedListView()
                .environmentObject(ModelStore())

        }
    }
}
