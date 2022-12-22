//
//  UserStore.swift
//  RecordLyric
//
//  Created by TAEHYOUNG KIM on 2022/12/22.
//

import Foundation

class UserStore: ObservableObject {
    @Published var users: [User] = []
    
    init() {
        users = []
    }
}
