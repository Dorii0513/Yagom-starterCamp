//
//  main.swift
//  week03
//
//  Created by 김예림 on 2022/05/03.
//

import Foundation

//lazy 키워드를 앞에 붙여서 저장하면 프로퍼티가 처음 사용되는 시점에 초기화가 됨.
struct Yagom {
    var name: String = "야굠"
    var age: Int = 20
    lazy var nickName: String = "천재" + self.name
}

var yagom = Yagom()
yagom.name = "야한곰"

print(yagom.nickName)

// 연산 프로퍼티
struct PersonC {
    var koreanAge: Int
    var americanAge: Int {
        get {
            return koreanAge - 1
        }
        set(newValue) {
            koreanAge = newValue; +1
        }
    }
}

//프로퍼티 감시자
struct PersonD {
    var name: String {
        willSet {
            // some code
        }
        didSet {
            // some code
        }
    }
}

//타입 프로퍼티
struct SomeStructure {
    static var someProperty: Int = 10
}

let number = SomeStructure.someProperty
