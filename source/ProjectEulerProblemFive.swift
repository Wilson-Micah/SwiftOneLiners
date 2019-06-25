

// Problem 5 from Project Euler
func smallestMultipleDivisibleByEveryNumber(under: Int) -> Int {
    return (1...).first { currentNumber in !(1...under).lazy.map{ divisor in currentNumber.isMultiple(of: divisor) }.contains(false)}!
}


