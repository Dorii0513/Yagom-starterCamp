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

let sumResult: Int = sum(1, 2)
print(sumResult)

// 궁금한 점 : 
let add: (Int, Int) -> Int
add = { (a: Int, b: Int) in
    return a - b
}
