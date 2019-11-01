/// Checks if two string are anagrams of each other
func areAnagrams(_ firstWord: String, secondWord: String) -> Bool {
	firstWord.lowercased().sorted() == secondWord.lowercased().sorted()
}

print(areAnagrams("cinema", secondWord: "iceman"))
