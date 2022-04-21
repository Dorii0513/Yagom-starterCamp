//
//  main.swift
//  week02
//
//  Created by 김예림 on 2022/04/20.
//

import Foundation

// 01. Array
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
//integers.append(101.1) 에러 발생 - int 타입이 아닌 double 타입이기 때문

integers.contains(100)
integers.contains(99)

integers.remove(at: 0)// 0번 인덱스에 있는 값을 없애기
integers.removeLast()
integers.removeAll()

integers.count // 몇 개의 인덱스가 들어있는지 확인

//Array<Double> == [Double]
// 빈 Double Array생성
var doubles: Array<Double> = [Double]() //괄호 = 생성

//빈 String Array 생성
var strings: [String] = [String]()

//빈 Character Array 생성
// []는 새로운 빈 Array
var characters: [Character] = []

//let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1, 2, 3]

// 02. Dictionary

// key가 String 타입, Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

// 키와 값이 쌍으로 정렬되어 있음
anyDictionary // ["someKey": "value", "anotherKey": 100]

anyDictionary["someKey"] = "dictionary" //이미 할당한 값을 바꿀 수 있음

anyDictionary.removeValue(forKey: "anotherKey") //키에 해당하는 값 없애기
anyDictionary["someKey"] = nil //키에 해당하는 값 없애기 (위의 표현과 동일)
print(anyDictionary) //[:] 출력

let emptyDictionary: [String: String] = [:] //빈 dictionary생성
let initializedDictionary: [String: String] = ["name": "yagom", "gender": "male"]

//let someValue: String = initializedDictionary["name"]
//오류나는 이유: name이라는 키에 해당하는 값이 있을 수도 있고 없을 수도 있음. 불확실성 때문. -> optional

//03. Set

var integerSet: Set<Int> = Set<Int>()//빈 set 생성
//insert로 숫자 추가
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)
// set은 중복된 값이 없다는 보장을 해줌. 따라서 integerSet 안에는 {100,99,1} 이 있음
// 아무리 같은 값을 많이 넣어줘도 하나만 추가됨

integerSet.contains(1) // 1이 들어있는지 true or false
integerSet.remove(100) //100없애기
print(integerSet) //[1, 99]
integerSet.removeFirst()
print(integerSet) //[99]

integers.count

//set 응용하기 - 교집합, 차집합
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB)// 합집합
let sortedUnion: [Int] = union.sorted() // 순서대로 같은 타입 배열 정렬
let intersection: Set<Int> = setA.intersection(setB) //교집합
let subtracting: Set<Int> = setA.subtracting(setB) //setA의 차집합
