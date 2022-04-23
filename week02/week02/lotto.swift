//
//  main.swift
//  week02
//
//  Created by 김예림 on 2022/04/23.
//

import Foundation

func pickLottoNumber() -> Set<Int> {
    var lottoNumber: Set<Int> = Set<Int>()
    while lottoNumber.count < 6{
        //var random = Int.random(in: 0...46)
        //print(random)
        lottoNumber.insert(Int.random(in: 0...46))
    }
    return lottoNumber
}

print (pickLottoNumber())
