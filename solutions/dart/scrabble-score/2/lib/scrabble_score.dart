int score(String word) {
  var scoreMap = const {
    1: ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
    2: ['D', 'G'],
    3: ['B', 'C', 'M', 'P'],
    4: ['F', 'H', 'V', 'W', 'Y'],
    5: ['K'],
    8: ['J', 'X'],
    10: ['Q', 'Z']
  };

  if (word == '') return 0;
  var score = 0;
  word.split('').forEach((ch) {
    scoreMap.forEach((k, v) {
      if (v.contains(ch.toUpperCase())) {
        score += k;
      }
      ;
    });
  });
  return score;
}