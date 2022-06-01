//
//  main.swift
//  week03
//
//  Created by 김예림 on 2022/04/29.
//

import Foundation

class PersonA {
    // 모든 저장 프로퍼티에 기본 값 할당
    var name: String = "unkonown"
    var age: Int = 0
    var nickName: String = "nick"
}

let jason: PersonA = PersonA()

jason.name = "jason"
jason.age = 30
jason.nickName = "j"

// MARK: - 이니셜라이저

class PersonB {
    var name: String
    var age: Int
    var nickName: String
    //이니셜라이저
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}
let haha: PersonB = PersonB(name: "haha", age: 30, nickName: "j")

// MARK: - 옵셔널 사용

class PersonC {
    var name: String
    var age: Int 
    var nickName: String?
    
    // 이렇게 init을 재 사용할 때 앞에 convenience를 붙여줘야 함
    convenience init(name: String, age: Int, nickName: String) {
        // 아래 이미 선언한 이니셜라이저를 재사용하고 싶을 때
        self.init(name: name, age: age)
        self.nickName = nickName
    }
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
let jenny: PersonC = PersonC(name: "jenny", age: 10)
let mike: PersonC = PersonC(name: "mike", age: 15, nickName: "m")

// MARK: - 암시적 추출 옵셔널 사용
class Puppy {
    var name: String
    var owner: PersonC!
    init(name: String) {
        self.name = name
    }
    func goOut() {
        print("\(name)가 주인\(owner.name)와 산책을 합니다")
    }
}
let happy: Puppy = Puppy(name: "happy")
//happy.goOut() // 주인이 없는 상태라 오류 발생
happy.owner = jenny
happy.goOut()
// MARK: - 실패 가능한 이니셜라이저

class PersonD {
    var name: String
    var age: Int
    var nickName: String?
    init?(name: String, age: Int) {
        if (0...20).contains(age) == false {
            return nil
        }
        self.name = name
        self.age = age
    }
}
let john: PersonD? = PersonD(name: "john", age: 23)
let joker: PersonD? = PersonD(name: "joker", age: 123)

print(joker) // nil

// MARK: - 실패 가능한 이니셜라이저
class PersonE {
    var name: String
    var pet: Puppy?
    var child: PersonC
    init(name: String, child: PersonC) {
        self.name = name
        self.child = child
    }
    // 인스턴스가 메모리에서 해제되는 시점에 자동 호출
    // deinit은 매개변수를 가질 수 없음
    deinit {
        if let petName = pet?.name {
            print("\(name)가 \(child.name)에게 \(petName)를 인도합니다")
            self.pet?.owner = child
        }
    }
}
var donald: PersonE? = PersonE(name: "donald", child: jenny)
donald?.pet = happy
donald = nil // donald 인스턴스가 더이상 필요없으므로 메모리에서 해제됩니다
// donald가 jenny에게 happy를 인도합니다
