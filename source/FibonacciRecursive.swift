// Fibonacci recursively
func fibonacci(at index: Int) -> Int {
	return index <= 2 ? 1 : fibonnaci(at: index-1) + fibonnaci(at: index-2)
}