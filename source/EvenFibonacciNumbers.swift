public func evenFibonacciNumbers(upto limit: Int = 4_000_000) -> Int {
    return { (context: UnsafeMutablePointer<(Int?, Int?)>) -> AnySequence<Int> in return AnySequence<Int> { return AnyIterator<Int> { return { newCurrent in return { _, _ in return newCurrent < limit ? newCurrent : { _ in return nil }(context.deallocate()) }(context.pointee.0 = context.pointee.1, context.pointee.1 = newCurrent) }((context.pointee.0 ?? 0) + (context.pointee.1 ?? 1)) } } }({ context in return { _ in context}(context.initialize(to: (nil, nil))) }(UnsafeMutablePointer<(Int?, Int?)>.allocate(capacity: 1))).lazy.filter { $0.isMultiple(of: 2) }.reduce(into: 0, +=)
}

print(evenFibonacciNumbers())
