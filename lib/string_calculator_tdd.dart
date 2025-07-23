class StringCalculatorTDD {
  static int add(String input) {
    if (input.isEmpty) return 0;
  
    final delimiters = [',', '\n'];
    String numbers = input;

    // Check for custom delimiter
    if (input.startsWith('//')) {
      final delimiterEndIndex = input.indexOf('\n');
      final customDelimiter = input.substring(2, delimiterEndIndex);
      delimiters.add(customDelimiter);
      numbers = input.substring(delimiterEndIndex + 1);
    }

   //normalized all delimiters into comma first
    for (var delimiter in delimiters) {
      numbers = numbers.replaceAll(delimiter, ',');
    }

    return numbers
        .split(',')
        .map((value) => int.parse(value))
        .reduce((sum, number) => sum + number);
  }
}