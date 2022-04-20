//
//  main.swift
//  week01
//
//  Created by 김예림 on 2022/04/17.
//

import Foundation

// 정수 타입

var integer: Int = -100
let unsignedInteger: UInt = 50
print("integer 값: \(integer), unsignedInteger 값: \(unsignedInteger)")

//let cannotBeNegetive: UInt = -5  UInt는 음수가 될 수 없음
//integer = unsignedInteger 다른 데이터 타입이므로 오류
integer = Int(unsignedInteger) //데이터 타입 변환

//불리인 타입
let iLoveYou: Bool = true
let isTimeUnlimited: Bool = false
print("시간은 무한합니까?: \(isTimeUnlimited)")

//실수 타입
var floatValue: Float = 1234567890.1 // float이 수용할 수 있는 만큼만 남긴 결과값이 나오므로 정확도가 떨아짐
let doubleValue: Double = 1234567890.1
print("floatValue: \(floatValue) doubleValue: \(doubleValue)")

floatValue = 123456.1
print(floatValue)

//문자 타입
let alphabetA: Character = "A"
print(alphabetA)

let commandCharacter: Character = "♡"
print(commandCharacter)

let 한글변수이름: Character = "ㄱ"
print("한글의 첫 자음: \(한글변수이름)")

//문자열타입
let name: String = "yagom"
//이니셜라이저를 사용하여 빈 문자열을 생성할 수 있음
var introduce: String = String()
//append() 메서드를 사용하여 문자열을 이어붙일 수 있음
introduce.append("제 이름은")
introduce = introduce + " " + name + "입니다"
print(introduce)
//.count : 문자의 수를 셀 수 있음
print("name 글자 수: \(name.count)")
//빈 문자열인지 확인하기 : .isEmpty
print("introduce가 비어있습니까?: \(introduce.isEmpty)")

let hello: String = "Hello"
let yagom: String = "yagom"
var greeting: String = hello + " " + yagom + "!" //연산자를 이용하여 문자열을 합칠 수 있음
print(greeting)
// 상수가 아닌 변수로 선언된 var greeting은 변경이 가능함
greeting = hello
greeting = greeting + " "
greeting = greeting + yagom
greeting = greeting + "!"
print(greeting)
//연산자를 통한 문자열 비교
var isSameString: Bool = false
isSameString = hello == "Hello"
print(isSameString)

isSameString = hello == "hello"
print(isSameString)

isSameString = yagom == "yagom"
print(isSameString)

isSameString = yagom == hello
print(isSameString)

greeting = """
안녕하세요 저는 야곰입니다. 스위프트 잘하고 싶어요!
잘 부탁합니다!
"""

