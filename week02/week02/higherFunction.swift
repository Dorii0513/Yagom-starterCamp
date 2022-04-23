//
//  main.swift
//  week02
//
//  Created by 김예림 on 2022/04/22.
//

import Foundation

// MARK: - 매개변수 기본 값
// 매개변수 기본 값 지정 가능
// 기본 값을 갖는 매개변수는 목록 중 뒤쪽에 위치하는 것이 좋음
func greeting(friend: String, me: String = "yagom") {
    print("Hello \(friend)! I'm \(me)")
}

greeting(friend: "haha")
greeting(friend: "john", me: "eric")

// MARK: - 전달인자 레이블 : 사용자 입장에서 매개변수의 역할을 명확하게 표현
// 변수처럼, 같은 이름의 함수를 여러번 재정의가 가능한가?
// 함수의 중복 정의를 할 수 있음 - swift에서는 함수의 이름을 전달인자까지 포함해 정의하고 있음
// 따라서 greeting 이라는 함수의 이름은 같아도 다른 함수로 취급하는 것
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}
// 함수 호출 시 전달인자 레이블을 사용해야 함
greeting(to: "haha", from: "yagom")


// MARK: - 가변 매개변수 : 전달 받을 값의 개수를 알기 어려울 때 사용, 한 함수당 하나씩만 가질 수 있음
func sayHelloFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}
print(sayHelloFriends(me: "yagom", friends: "haha", "eric", "wing"))
print(sayHelloFriends(me: "yagom"))


// MARK: - 데이터 타입으로서의 함수
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "yagom")

someFunction = greeting(friend:me:)
someFunction("eric", "yagom")

//타입이 다른 함수는 할당 할 수 없음
//someFunction = sayHelloFriends(me:friends:)

//함수가 매개변수가 될 수 있음
func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}
runAnother(function: greeting(friend:me:))
runAnother(function: someFunction)

