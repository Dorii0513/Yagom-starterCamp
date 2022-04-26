//
//  main.swift
//  week02
//
//  Created by 김예림 on 2022/04/24.
//

import Foundation
//if 문에서 소괄호는 생략할 수 있음
//조건문에는 항상 Bool타입이 들어와야함

//MARK: - Switch
// 범위 연산자를 활용하면 쉽고 유용
// 범위연산자 ex) 1..<100 : 1이상 100 미만, 1...100 : 1이상~100이하
var someInteger = 0
switch someInteger {
case 0:
    print("zero")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

//정수 외의 대부분의 기본 타입을 사용할 수 있음
switch "yagom" {
case "jake":
    print("jake")
case "mina":
    print("mina")
case "yagom":
    print("yagom!!")
default:
    print("unknown")
}
//switch 구문은 명확히 모든 케이스가 주어지지 않는 한, default 구문을 넣어주어야 함
// case 뒤에 break를 넣어 명시해주지 않아도 됨.
// 한 케이스에 여러가지 조건을 넣고 싶다면 콤마로 이어주기
// fallthrough : break를 써주지 않은것 처럼 동작을 함
