// Fizz Buzz
func runFizzBuzz() {
	(1...100).forEach { print($0.isMultiple(of: 3) && $0.isMultiple(of: 5) ? "FizzBuzz" : ($0.isMultiple(of: 3) ? "Fizz" : ($0.isMultiple(of: 5) ? "Buzz" : String(describing: $0)))) }
}

runFizzBuzz()