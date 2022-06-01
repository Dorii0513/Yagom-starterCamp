//
//  main.swift
//  week04
//
//  Created by 김예림 on 2022/05/11.
//

import Foundation

let sum: (Int, Int) -> Int = {(a: Int, b: Int) in
    return a + b
}

let add: (Int, Int) -> Int
add = { (a: Int, b: Int) in
    return a + b
}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) in
    return a - b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) in
    return a/b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a,b)
}

var calculated: Int
calculated = calculate(a: 50, b: 10, method: add)
print(calculated)
calculated = calculate(a: 50, b: 10, method: substract)
print(calculated)
calculated = calculate(a: 50, b: 10, method: divide)
print(calculated)

//따로 클로저를 상수 / 변수에 넣어 전달하지 않고,
// 함수를 호출할 때 클로저를 작성하여 전달할 수도 있음
calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})

print(calculated)
