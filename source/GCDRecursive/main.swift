// GCD - Euclidean Algorithm
func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}

print(gcd(45, 333)) // 9
print(gcd(42, 4242)) // 42
print(gcd(7, 11)) // 1
