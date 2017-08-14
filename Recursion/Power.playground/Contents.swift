//: A function "power" that calculates 'x' to the power of 'y'

import Foundation
func power(_ x: Int, _ y: Int) -> Int {
    if y > 1 {
        return power(x, y - 1) * x
    } else {
        return x
    }
}

power(3, 3)