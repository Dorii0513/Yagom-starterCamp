//
//  main.swift
//  week02
//
//  Created by 김예림 on 2022/04/22.
//

import Foundation

var integers = [1, 2, 3]
let people = ["yagom": 10, "eric": 15, "mike": 12]

for integer in integers {
    print(integer)
}

//Dictionary = 튜플 타입
for (name, age) in people {
    print("\(name): \(age)")
}

while integers.count > 1 {
    integers.removeLast()
    print(integers)
}

repeat {
    integers.removeLast()
    print(integers)
} while integers.count > 0
