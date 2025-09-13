class EggCounter {
  int count(int num) {
    return num.toRadixString(2).split('').where((bit) => bit == '1').length;
  }
}
