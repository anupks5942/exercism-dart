class AtbashCipher {
  String encode(String text) {
    // Remove punctuation, make lowercase
    final cleaned = text.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

    // Convert letters using atbash; keep numbers unchanged
    final converted = cleaned.split('').map((ch) {
      if (RegExp(r'[a-z]').hasMatch(ch)) {
        final code = ch.codeUnitAt(0) - 97; // a = 0
        final oppositeCode = 97 + (25 - code);
        return String.fromCharCode(oppositeCode);
      }
      return ch; // leave digits unchanged
    }).join();

    // Group into blocks of 5
    return converted.replaceAllMapped(RegExp(r'.{1,5}'), (m) => m[0]! + ' ').trim();
  }

  String decode(String text) {
    final cleaned = text.toLowerCase().replaceAll(' ', '');
    final converted = cleaned.split('').map((ch) {
      if (RegExp(r'[a-z]').hasMatch(ch)) {
        final code = ch.codeUnitAt(0) - 97;
        final oppositeCode = 97 + (25 - code);
        return String.fromCharCode(oppositeCode);
      }
      return ch;
    }).join();

    return converted;
  }
}
