//
//  main.swift
//  week02
//
//  Created by 김예림 on 2022/04/23.
//

import Foundation

var lottoNumbers: Set<Int> = Set<Int>()

func pickLottoNumbers() -> Set<Int> {
    while lottoNumbers.count < 6{
        lottoNumbers.insert(Int.random(in: 0...46))
    }
    return lottoNumbers
}

let myLootoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func compareNumbers() {
    var myNumbers: Set<Int> = Set<Int>()
    for count in 0..<myLootoNumbers.count{
        myNumbers.insert(myLootoNumbers[count])
    }
    let intersection: Set<Int> = myNumbers.intersection(lottoNumbers)
    
    switch intersection.count {
    case 0:
        print("아쉽지만 겹치는 번호가 없습니다.")
    case 1:
        print("축하합니다! 겹치는 번호는", terminator: " ")
        for num in intersection {
            print(num, terminator: " ")
        }
        print("입니다!")
    default:
        print("축하합니다! 겹치는 번호는", terminator: " ")
        var index = 1
        for num in intersection {
            if index == intersection.count {
                print(num, terminator: " ")
            }else {
                print("\(num), ", terminator: " ")
            }
            index += 1
        }
        print("입니다!")
    }
}
print(pickLottoNumbers())
compareNumbers()
    
// set에서 [] 없이 출력하는 방법은 for문을 활용하는것 밖에 없는지..
// case 1에서 set을 배열로 바꾼 후, 배열[0] 을 출력하는 방식이 더 나을지
// default에서 쉼표...set에서 index 값을 구할 수 없으니까 따로 카운트되도록 설정해 둠
