//
//  main.swift
//  week02
//
//  Created by 김예림 on 2022/04/25.
//

import Foundation
/*
var someDictionary: [String?: String] = [:]
let day: Int = day(of: today)

if day == 1 || day == 30 {
    someDictionary["날씨"] = "맑음"
} else {
    someDictionary["풍향"] = "남풍동"
}
*/

var numbers: [Int?] = [0, 1, nil, 2, 5]
numbers.append(nil)

let someArray: [[[Int?]?]?] = [[[1, 2], nil, [3, nil, 4], nil, [5, 6]]]

if let num1 = someArray[0], let num2 = num1[2], let num3 = num2[0] {
    print(num3)
    }
