class Etl {
  Map<String, int> transform(Map<String, List<String>> legacy) {
    final result = <String, int>{};
    legacy.forEach((scoreStr, letters) {
      final score = int.parse(scoreStr);
      for(var letter in letters) result[letter.toLowerCase()] = score;
    });

    return result;
  }
}
