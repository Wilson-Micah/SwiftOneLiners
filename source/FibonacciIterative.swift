// Fibonacci iteratively
func fibonacci(at index: Int) -> Int {
    return index < 2 ? 1 : { context in { value, _ in value.0 }({ _ in context.move() } ((2..<index).forEach { _ in (context.pointee.0, context.pointee.1) = (context.pointee.0 + context.pointee.1, context.pointee.0) }), context.deallocate()) }({ context in return { _ in context }(context.initialize(to: (1, 1))) }(UnsafeMutablePointer<(Int, Int)>.allocate(capacity: 1)))
}

print(fibonacci(at: 5)) // 5
print(fibonacci(at: 10)) // 55
print(fibonacci(at: 50)) // 12586269025
