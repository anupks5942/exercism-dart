int score(String word) {
  const letterValues = {
    'A': 1, 'E': 1, 'I': 1, 'O': 1, 'U': 1,
    'L': 1, 'N': 1, 'R': 1, 'S': 1, 'T': 1,
    'D': 2, 'G': 2,
    'B': 3, 'C': 3, 'M': 3, 'P': 3,
    'F': 4, 'H': 4, 'V': 4, 'W': 4, 'Y': 4,
    'K': 5,
    'J': 8, 'X': 8,
    'Q': 10, 'Z': 10,
  };

  return word
      .toUpperCase()
      .split('')
      .fold(0, (sum, ch) => sum + (letterValues[ch] ?? 0));
}

// int score(String word) {
//   var scoreMap = const {
//     1: ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
//     2: ['D', 'G'],
//     3: ['B', 'C', 'M', 'P'],
//     4: ['F', 'H', 'V', 'W', 'Y'],
//     5: ['K'],
//     8: ['J', 'X'],
//     10: ['Q', 'Z']
//   };

//   if (word == '') return 0;
//   var score = 0;
//   word.split('').forEach((ch) {
//     scoreMap.forEach((k, v) {
//       if (v.contains(ch.toUpperCase())) {
//         score += k;
//       }
//       ;
//     });
//   });
//   return score;
// }