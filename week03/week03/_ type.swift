//
//  main.swift
//  week03
//
//  Created by 김예림 on 2022/04/26.
//

import Foundation
// Computer라는 이름의 구조체 타입을 정의
// 컴퓨터라는 개체가 가져야할 값들과 동작을 정의함
// 클래스 타입으로 정의하고 싶다면 struct -> class 로 변경하기
struct Computer {
    var battery: Int = 100
    let manufacturer: String = "Apple"
    
    func saveData() {
        print("데이터를 저장합니다.")
    }
    
    func playVideo() {
        print("영상을 재생합니다.")
    }
}

// 중첩타입
struct SoccerPlayer {
    enum Position {
        case goalKeeper, wing, back, forward
    }
    
    let name: String
    var position: SoccerPlayer.Position
}

struct BasketballPlayer {
    enum Position {
        case center, forward, `guard`
    }
    
    let name: String
    var position: BasketballPlayer.Position
}
