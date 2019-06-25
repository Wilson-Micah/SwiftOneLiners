

// Prject Euler Problem One
func sumMultiplesOfThreeAndFive(under upperBound: Int) -> Int {
    return (0..<upperBound).lazy.filter { $0.isMultiple(of: 3) || $0.isMultiple(of: 5) }.reduce(0, +)
}
