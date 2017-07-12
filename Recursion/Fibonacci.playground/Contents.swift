// A function 'fibonacci' that calculates the N-th Fibonacci number

import Foundation

func fibonacci(_ N: Int) -> Int {
    if N > 2 {
        return fibonacci(N - 1) + fibonacci(N - 2)
    } else { return 1 }
}

fibonacci(8)
