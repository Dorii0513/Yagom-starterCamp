//
//  main.swift
//  week02
//
//  Created by 김예림 on 2022/04/24.
//

import Foundation

/*
 optional : 값이 있을 수도, 없을 수도 있음
 optional이 필요한 이유 nil의 가능성을 명시적으로 표현.
 - nil 가능성을 문서화 하지 않고 코드만으로도 충분히 표현 가능하기 때문에
 문서 / 주석 작성 시간을 절약해줌
 - 전달받은 값이 옵셔널이 아니라면 nil 체크를 하지 않더라도 안심하고 사용 가능하기 때문에
 효율적인 코딩, 예외상황을 최소화하는 안전한 코딩이 가능함
 
 옵셔널이 아닌 타입은 nil이 들어갈 수 없음
 
 옵셔널은 열거형과 제네럴의 합작으로 볼 수 있음.
 let optionalVallue: Int? = nil
 */

 //옵셔널 표현

 // MARK: - ! : 암시적 추출 옵셔널
var optionalValue1: Int! = 100
//switch구문으로 값이 있는지 없는지 확인 가능
switch optionalValue1 {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}
//기존 변수처럼 사용 가능
optionalValue1 = optionalValue1 + 1
// nil 할당 가능
optionalValue1 = nil
// 잘못된 접근으로 인한 런타임 오류 발생 :
// 위의 변수에서 nil 값을 넣어줬는데 +1을 해주어 오류가 발생한 것
// optionalValue1 = optionalValue + 1

// MARK: - ? : 일반적인 옵셔널
var optionalValue2: Int? = 100
//switch구문으로 값이 있는지 없는지 확인 가능
switch optionalValue2 {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}
//nill 할당 가능
optionalValue2 = nil
// 기존 변수처럼 사용 불가 : 옵셔널과 일반 값은 다른 타입이므로 연산 불가
//optionalValue2 = optionalValue2 + 1

// MARK: - 옵셔널 추출 : 바인딩
// 옵셔널 값을 꺼내오는 방법 중 하나
// nil체크 + 안전한 값 추출
// MARK: -  if - let 방법

func printName(_ name: String) {
    print(name)
}

var myName: String! = nil
// name 상수는 if-let 구문 내에서만 사용 가능
if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}

// MARK: - 여러 옵셔널 타입 바인딩하기ㄴ
var myName2: String? = "yagom"
var yourName: String? = nil

if let name = myName2, let friend = yourName {
    print("\(name) and \(friend)")
}// yourName이 nil이기 때문에 실행되지 않음
yourName = "haha"
if let name = myName2, let friend = yourName {
    print("\(name) and \(friend)")
}//yagom and haha

// MARK: - 옵셔널의 값을 강제로 추출
func printName2(_ name: String) {
    print(name)
}
var myName3: String? = "yagom"
printName2(myName3!) // 느낌표를 붙이면 안에 있는 값을 강제로 추출할 수 있음
myName3 = nil
// print(myName3!)
// 강제 추출 시 값이 없으므로 런타임 오류
var yourName2: String! = nil
// print(yourName2)
// 암시적 옵셔널타입 이므로, yourName2! 처럼 느낌표를 붙이지 않아도 전달 할 수 있음 하지만,
// nil값이 전달되기 때문에 런타임 오류
