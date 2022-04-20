//
//  main.swift
//  week01
//
//  Created by 김예림 on 2022/04/17.
//

import Foundation
//문자열 고급
let hello: String = "Hello"
let yagom: String = "yagom"
var greeting: String = hello + " " + yagom + "!"

//메서드를 통한 접두어, 접미어 확인
var hasprefix: Bool = false

hasprefix = hello.hasPrefix("He")
print(hasprefix)

hasprefix = hello.hasPrefix("HE")
print(hasprefix)

hasprefix = greeting.hasPrefix("Hello ")
print(hasprefix)

hasprefix = yagom.hasPrefix("gom")
print(hasprefix)

hasprefix = hello.hasPrefix("Hello")
print(hasprefix)

var hasSuffix: Bool = false

hasSuffix = hello.hasSuffix("He")
print(hasSuffix)

hasSuffix = hello.hasSuffix("llo")
print(hasSuffix)

hasSuffix = greeting.hasSuffix("yagom")
print(hasSuffix)

hasSuffix = greeting.hasSuffix("yagom!")
print(hasSuffix)

hasSuffix = yagom.hasSuffix("gom")
print(hasSuffix)

//메서드를 통한 대소문자 변환
var convertedString: String = ""

convertedString = hello.uppercased()
print(convertedString)

convertedString = hello.lowercased()
print(convertedString)
