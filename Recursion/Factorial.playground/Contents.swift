// A function "factorial" to calculate the factorial of an integer

import UIKit

func factorial(_ N: Int) -> Int {
    if N > 1 {
        return factorial(N - 1) * N
    } else {
        return 1
    }
}

factorial(5)