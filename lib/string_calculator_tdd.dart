class StringCalculatorTDD {
  static int add(String input) {
    if (input.isEmpty) return 0;
  
    final delimiters = [',', '\n'];

   //normalized all delimiters into comma first
    String normalized = input;
    for (var delimiter in delimiters) {
      normalized = normalized.replaceAll(delimiter, ',');
    }

    return normalized
        .split(',')
        .map((token) => int.parse(token))
        .reduce((sum, number) => sum + number);
  }
}