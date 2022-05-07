//
//  main.swift
//  week03
//
//  Created by 김예림 on 2022/05/06.
//

import Foundation

// MARK: - 서브클래싱
class Person {
    var weight = 50
    
    func eat() {
        weight += 1
    }
}

class Student: Person {
    var mathScore = 80
    
    func study() {
        mathScore += 3
    }
}

let jason = Student()

jason.weight //50
jason.eat()
jason.weight //51

// MARK: - 오버라이딩

class Person2 {
    var weight = 50
    
    func eat() {
        weight += 1
    }
}

class Student2: Person2 {
    var mathScore = 80
    
    func study() {
        mathScore += 3
    }
    
    override func eat() {
        weight += 5
    }
}

// MARK: - 오버라이딩 : super

class Student3: Person {
    var mathScore = 80
    
    func study() {
        mathScore += 3
    }
    
    override func eat() {
        weight += 5
    }
    
    func eatAsPerson() {
        super.eat()
    }
}
