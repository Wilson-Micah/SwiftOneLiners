/// Check if the given string is a palindrome
func isPalindrome(_ string: String) -> Bool {
	string.lowercased() == String(string.lowercased().reversed())
}

print(isPalindrome("racecar"))
