import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(String num) {
    final digits = num.split('').map((d) => BigInt.parse(d)).toList();
    final power = digits.length;

    BigInt sum = BigInt.zero;
    for (final d in digits) {
      sum += d.pow(power); // BigInt.pow keeps full precision
    }

    return sum.toString() == num;
  }
}
