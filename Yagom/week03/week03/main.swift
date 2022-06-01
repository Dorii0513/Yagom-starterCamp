//
//  main.swift
//  week03
//
//  Created by 김예림 on 2022/05/07.
//

import Foundation
import UIKit

enum Fuel {
    case gasoline, diesel
}

enum Direction {
    case left, right
}

enum Gear {
    case forward, reverse
}

struct Car {
    var color: UIColor = .red
    var fuel: Fuel = .gasoline
    var capacity: Int = 5
    var gear: Gear = .forward
    
    // 구조체의 메소드에서 프로퍼티 값을 변경하려면 mutating을 앞에 붙여줘야합니다
    func goForward() {
        gear = .forward
        print("전진")
    }
    
    // 구조체의 메소드에서 프로퍼티 값을 변경하려면 mutating을 앞에 붙여줘야합니다
    func reverse() {
        gear = .reverse
        print("후진")
    }

    func turn(to: Direction) {
        print("\(to)로 회전")
    }
}

var greenCar: Car = Car()
greenCar.color = .green
greenCar.fuel = .diesel
greenCar.goForward()

var yellowCar = Car.init()
yellowCar.color = .yellow
yellowCar.turn(to: Direction.left)
