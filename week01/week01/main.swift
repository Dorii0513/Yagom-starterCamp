//
//  main.swift
//  week01
//
//  Created by 김예림 on 2022/04/16.
//

import Foundation


// ver 01.

// 아이스크림 바디 함수
/*
func icecreamBody(){
    for _ in 0...7{
        for _ in 0...10{
            print("*",terminator:"") // "*"을 줄바꿈 없이 8번 반복 출력
        }
        print("") // 줄바꿈 후, 이어서 출력
    }
}

//아이스크림 막대 함수
func icecreamBar(){
    for _ in 0...3{
        for _ in 0...3{
            print(" ",terminator: "") // 줄바꿈 없이 띄어쓰기 4번 출력
        }
        print("|","|",separator: " ") // 두 개의 "|"를 공백으로 나누어줌
    }
}

icecreamBody() // 아이스크림 바디 호출
icecreamBar() // 아이스크림 막대 호출
*/

//ver 02.
//변수 활용하기

func icecreamBody(width: Int, hight: Int){
    for _ in 1...hight{
        for _ in 1...width{
            print("*", terminator:"") // "*"을 줄바꿈 없이 8번 반복 출력
        }
        print("") // 줄바꿈 후, 이어서 출력
    }
}

//아이스크림 막대 함수
func icecreamBar(hight: Int, width: Int){
    for _ in 1...hight{
        for _ in 1...((width/2) - 1){
            print(" ", terminator: "") // 줄바꿈 없이 띄어쓰기 4번 출력
        }
        print("|", "|", separator: " ") // 두 개의 "|"를 공백으로 나누어줌
    }
}

icecreamBody(width: 11, hight: 8)
icecreamBar(hight: 4 , width: 11)
