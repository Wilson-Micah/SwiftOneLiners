/// Checks if two string are anagrams of each other
func areAnagrams(_ firstWord: String, secondWord: String) -> Bool {
	return firstWord.lowercased().sorted() == secondWord.lowercased().sorted()
}

print(areAnagrams("cinema", secondWord: "iceman"))
