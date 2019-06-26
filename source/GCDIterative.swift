// GCD - Euclidean Algorithm
func gcd(_ a: Int, _ b: Int) -> Int {
    return { context in return { value, _ in value.0 }({ _ in  context.move() }({ while context.pointee.0 != context.pointee.1 { if context.pointee.0 > context.pointee.1 { context.pointee.0 -= context.pointee.1 } else { context.pointee.1 -= context.pointee.0 } } }()), context.deallocate()) }({ context in return { _ in context }(context.initialize(to: (a, b))) }(UnsafeMutablePointer<(Int, Int)>.allocate(capacity: 1)))
}

print(gcd(45, 333)) // 9
print(gcd(42, 4242)) // 42
print(gcd(7, 11)) // 1
