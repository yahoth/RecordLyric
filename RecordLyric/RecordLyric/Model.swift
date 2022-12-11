//
//  Model.swift
//  RecordLyric
//
//  Created by TAEHYOUNG KIM on 2022/12/11.
//

import Foundation
import SwiftUI

struct Info: Identifiable, Hashable {
    var id: String
    var singer: String
    var song: String
    var lyric: String
    var description: String
    var imageName: String?
}


