/// Check if the given string is a palindrome
func isPalindrome(_ string: String) -> Bool {
	return string.lowercased() == String(string.lowercased().reversed())
}

print(isPalindrome("racecar"))
