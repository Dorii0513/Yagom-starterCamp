//
//  main.swift
//  CodeStarterCamp_Week1
//
//  Created by 김예림 on 2022/04/20.
//

import Foundation

func makePeperoBar(barLength: Int) {
    for _ in 1...barLength {
        print(" | | ")
    }
}

func makePeperoBody(body: String, topping: String) -> String {
    var PeperoBody: String = String()
    if topping.isEmpty == true{
        PeperoBody += " "
    }else {
        PeperoBody += topping
    }
    PeperoBody += body + "\n " + body + topping
    return PeperoBody
}

var bodyResult: String = String()

func makePeperoLength(bodyLength: Int) {
    for _ in 1...bodyLength/2 {
        print(bodyResult)
    }
}
//빼빼로 출력 함수 (실행 예시 1~4, 나만의 배빼로)
func makePepero_1() {
    bodyResult = makePeperoBody(body: "***", topping: "")
    makePeperoLength(bodyLength: 10)
    makePeperoBar(barLength: 4)
    print("")
}

func makePepero_2() {
    bodyResult = makePeperoBody(body: "***", topping: "&")
    makePeperoLength(bodyLength: 12)
    makePeperoBar(barLength: 4)
    print("")
}

func makePepero_3() {
    bodyResult = makePeperoBody(body: "***", topping: "#")
    makePeperoLength(bodyLength: 12)
    makePeperoBar(barLength: 6)
    print("")
}

func makePepero_4() {
    bodyResult = makePeperoBody(body: "|0|", topping: "")
    makePeperoLength(bodyLength: 6)
    makePeperoBar(barLength: 4)
    print("")
}

func makeMyPepero() {
    bodyResult = makePeperoBody(body: "|0|", topping: "*")
    makePeperoLength(bodyLength: 8)
    makePeperoBar(barLength: 5)
    print("")
}

var information = """
<정보>
길이: 10
몸통: ***
토핑:
막대길이: 4

"""
print(information)
makePepero_1()

information = """
<정보>
길이: 12
몸통: ***
토핑: &
막대길이: 4

"""
print(information)
makePepero_2()

information = """
<정보>
길이: 12
몸통: ***
토핑: #
막대길이: 6

"""
print(information)
makePepero_3()

information = """
<정보>
길이: 6
몸통: |0|
토핑:
막대길이: 4

"""
print(information)
makePepero_4()

information = """
<정보>
길이: 8
몸통: |0|
토핑: *
막대길이: 5

"""
print(information)
makeMyPepero()
