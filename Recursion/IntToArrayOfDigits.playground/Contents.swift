//: A function "digits" to convert an integer to an array containing all of its digits

func digits(_ i: Int) -> [Int] {
    if i < 10 {
        return [i]
    } else {
        let firstDigits = digits(i / 10)
        let lastDigit = i % 10
        return firstDigits + [lastDigit]
    }
}

digits(100000)