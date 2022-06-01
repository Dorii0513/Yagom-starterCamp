//
//  main.swift
//  week03
//
//  Created by 김예림 on 2022/04/26.
//

import Foundation
// 타입 생성
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

// 인스턴스 생성
var myComputer: Computer = Computer() // Computer.init()과 같은 표현
myComputer.battery = 80
//myComputer.manufacturer = "야곰 아카데미" Error : 상수 값을 변경할 수 없음
myComputer.saveData() // 출력: 데이터를 저장합니다.

var yagomComputer: Computer = Computer.init()
yagomComputer.battery = 20
yagomComputer.playVideo() //출력 : 영상을 재생합니다.
