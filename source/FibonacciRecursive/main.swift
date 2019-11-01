// Fibonacci recursively
func fibonacci(at index: Int) -> Int {
	index <= 2 ? 1 : fibonacci(at: index-1) + fibonacci(at: index-2)
}