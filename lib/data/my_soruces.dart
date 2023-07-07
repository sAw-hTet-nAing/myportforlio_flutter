class MySource {
  static const digits = '0123456789';
  static const uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  static const lowercase = 'abcdefghijklmnopqrstuvwxyz';
  static const alphabets = '$uppercase$lowercase';
  static const specialCharacters = '`~!@#\$%^&*()_+-=[]{}\\|;:\'".>/?';
  static const all = '$digits$alphabets$specialCharacters';
}
