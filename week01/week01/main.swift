//
//  main.swift
//  week01
//
//  Created by 김예림 on 2022/04/19.
//

import Foundation

func makePeperoBar(barLength: Int){
    for _ in 1...barLength{
        print(" |", "| ")
    }
}
//var topping = String()
func makePeperoBody(body: String, topping: String){
    if topping.isEmpty == true{
        print(" ", terminator: "")
    }else {
        print(topping, terminator: "")
    }
    print(body)
    print(" ", body + topping, separator: "")
}

func makePeperoLength(bodyLength: Int){
    for _ in 1...bodyLength/2{
        makePeperoBody(body: "|0|", topping: "&")
    }
}
func makePepero(){
    makePeperoLength(bodyLength: 12)
    makePeperoBar(barLength: 6)
}



var information: String
information = """
<정보>
길이: \(bodyLength)
몸통: \(body)
토핑: \(topping)
막대길이: \(barLength)
"""
makePepero()
