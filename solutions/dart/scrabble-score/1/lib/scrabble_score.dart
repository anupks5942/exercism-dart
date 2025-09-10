int score(String word) {
  // Map each letter to its Scrabble value
  final Map<String, int> letterValues = {
    'A': 1, 'E': 1, 'I': 1, 'O': 1, 'U': 1, 'L': 1, 'N': 1, 'R': 1, 'S': 1, 'T': 1,
    'D': 2, 'G': 2,
    'B': 3, 'C': 3, 'M': 3, 'P': 3,
    'F': 4, 'H': 4, 'V': 4, 'W': 4, 'Y': 4,
    'K': 5,
    'J': 8, 'X': 8,
    'Q': 10, 'Z': 10,
  };

  // Convert word to uppercase to match keys in the map
  word = word.toUpperCase();

  // Calculate total score
  int score = 0;
  for (var char in word.split('')) {
    score += letterValues[char] ?? 0; // add 0 if character is not a letter
  }
  return score;
}
