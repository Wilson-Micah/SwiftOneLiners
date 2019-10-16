// Finding duplicates characters in a String

func duplicateCharacters(_ string: String) -> Set<Character> {
	return Set(string.filter({ string.firstIndex(of: $0) != string.lastIndex(of: $0) }))
}

print(duplicateCharacters("12345678912abA"))
