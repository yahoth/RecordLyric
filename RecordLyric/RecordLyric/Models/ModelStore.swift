//
//  ModelStore.swift
//  RecordLyric
//
//  Created by TAEHYOUNG KIM on 2022/12/11.
//

import Foundation

class ModelStore: ObservableObject {
    
    @Published var models: [Info] = [
        Info(id: UUID().uuidString, singer: "크라잉넛", song: "명동콜링", lyric: "갑자기 추억들이 춤을 추네", description: "문득 길거리에 어린 커플들을 보다가 헤어진 연인과의 추억들이 가슴에 몽글몽글 차올랐는데, 그 느낌을 잘 표현한 것 같다", imageName: "명동콜링"),
        Info(id: UUID().uuidString, singer: "성시경", song: "한번 더 이별", lyric: "못본척 나의 눈물 가려 주던 친구들은 이제는 웃으며 그 얘길 꺼내고 나도 웃음으로 받아줄 수 있었던 오늘 우리 한번 더 이별 할까요", description: "이별했지만 마음 속에는 네가 살고 있었어. 그리고 지금은 너를 보내줄 수 있게 됐어 우리 오늘 한번 더 이별하자.", imageName: "한번더이별"),
        Info(id: UUID().uuidString, singer: "데이먼스이어", song: "salty", lyric: "시간은 흘러 내 모습을 깎아내고 액자 속의 사진도 다 갉아 먹겠죠 원망은 없어요 그저 너무 슬퍼져서 아무 말도 하지 않고 잠겨지겠죠", description: "이별 후 힘든 상태를 잘 표현하였다. 사진을 지우는 행위를 갉아먹는다고 하니까 가슴이 먹먹해진다", imageName: "salty")
        ]
}
