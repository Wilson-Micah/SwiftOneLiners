
// Problem six from Project Euler
func sumSquareDifference(of range: ClosedRange<Int>) -> Int {
    { (sumOfSquares: Int, squareOfSum: Int) -> Int in squareOfSum - sumOfSquares }({ range.lazy.map { $0 * $0 }.reduce(into: 0, +=) }(), { [range.reduce(into: 0, +=)].reduce(into: 0) { $0 = $1 * $1 } }())
}

print(sumSquareDifference(of: 1...100))
