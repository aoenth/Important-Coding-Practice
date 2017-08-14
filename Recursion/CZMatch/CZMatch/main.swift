//
//  main.swift
//  CZMatch
//
//  Created by Kevin on 2017-07-15.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

import Foundation

let arr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

func pair(_ arr: [Int]) -> [[Int]] {
    var bigA = [[Int]]()
    if arr.count == 2 {
        return [arr]
    }
    
    var firstTwo = Array(arr[arr.startIndex...arr.startIndex + 1])
    var rest = Array(arr[arr.startIndex + 2..<arr.endIndex])
    var list:[[Int]]
    for i in 0...rest.count {
        list = pair(rest)
        for j in list {
            bigA.append(firstTwo + j)
        }
        
        guard i < rest.count else { continue }
        let tempFirst = firstTwo[firstTwo.endIndex - 1]
        firstTwo[firstTwo.endIndex - 1] = rest[i]
        rest[i] = tempFirst
    }
    return bigA
}

let combo = pair(arr)
print(combo.count)



