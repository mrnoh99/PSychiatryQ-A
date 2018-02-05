//
//  Questions.swift
//  PsychiatryQnA
//
//  Created by NohJaisung on 2018. 2. 5..
//  Copyright © 2018년 Hossam Ghareeb. All rights reserved.
//

import Foundation

import AVFoundation
import MediaPlayer

struct Questions {
   
    var questionDic: [String: Int] = [
    "1":1,
    "2":2,
    "3":3,
    "4":4,
    "5":5
    ]
    
    
    
    
func uniqueRandoms(numberOfRandoms: Int, minNum: Int, maxNum: UInt32) -> [Int] {
        var uniqueNumbers = Set<Int>()
        while uniqueNumbers.count < numberOfRandoms {
            uniqueNumbers.insert(Int(arc4random_uniform(maxNum + 1)) + minNum)
        }
        return Array(uniqueNumbers).shuffle
    }
    

    
 
    
    
}

extension Array {
    var shuffle:[Element] {
        var elements = self
        for index in 0..<elements.count {
            let anotherIndex = Int(arc4random_uniform(UInt32(elements.count-index)))+index
            if anotherIndex != index {
                elements.swapAt(index, anotherIndex)
            }
        }
        return elements
    }
}
