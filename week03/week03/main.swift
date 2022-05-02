//
//  main.swift
//  week03
//
//  Created by 김예림 on 2022/05/01.
//

import Foundation


class PersonA {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func addOneToAge() {
        self.age += 1
    }
}

struct PersonB {
    var name: String
    var age: Int
    
    mutating func addOneToAge() {
        self.age += 1
    }
}

// 값타입 참조타입
class CameraA {
    var color = "Black"
}

struct CameraB {
    var color = "Black"
}

func printCameraColor() {
    let str = """
Camera A (my: \(myCameraA.color), yours: \(yourCameraA.color))
Camera B (my: \(myCameraB.color), yours: \(yourCameraB.color))
"""
    print(str)
}

var myCameraA = CameraA()
var yourCameraA = myCameraA

var myCameraB = CameraB()
var yourCameraB = myCameraB

printCameraColor()

print("----- myCamera 색을 변경합니다. -----")

myCameraA.color = "White"
myCameraB.color = "White"

printCameraColor()
