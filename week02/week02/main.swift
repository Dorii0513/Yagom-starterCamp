//
//  main.swift
//  week02
//
//  Created by 김예림 on 2022/04/23.
//

import Foundation

// MARK: - enum 예시
enum Dish {
    case rice, noodle, soup
}

func choose(dish: Dish) {
    print("\(dish)을 골랐군요!")
}

choose(dish: Dish.rice)
choose(dish: .rice)

// MARK: - case별로 고유한 값을 지정해주기

//  열거형 이름의 뒤에 (:)를 붙이고 한 칸 띈 다음 타입 이름 적기
enum Food: String {
    case rice = "밥", noodle = "면", soup = "수프"
}

func select(dish: Food) {
    print("\(dish.rawValue)을 골랐군요!")
}
select(dish: Food.rice)

// MARK: - 성별

enum Sex {
    case male, female
}
func choose(sex: Sex) {
    print("당신의 성별은 \(sex)이군요!")
}

choose(sex: .female)

// MARK: - 방위

enum CardinalPoints {
    case East, West, South, North
}
func choose(cardinalPoints: CardinalPoints) {
    print("지금은 \(cardinalPoints) 입니다.")
}

choose(cardinalPoints: .South)

// MARK: - 무선통신 방식
enum Mobile: String {
    case case1 = "3G", case2 = "LTE", case3 = "4G", case4 = "5G"
}
func choose(mobile: Mobile) {
    print("지금은 \(mobile.rawValue) 입니다.")
}

choose(mobile: .case3)
// MARK: - 맥북

enum Macbook {
    case mini, pro, m1
}
func choose(macbook: Macbook) {
    print("나의 노트북은 맥북\(macbook) 입니다.")
}

choose(macbook: .pro)
