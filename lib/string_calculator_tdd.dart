class StringCalculatorTDD {
  static int add(String input) {
    if (input.isEmpty) return 0;
    
    // Split on comma for multiple numbers, handle arbitrary amount
    if (input.contains(',')) {
      return input
          .split(',')
          .map(int.parse)
          .reduce((sum, number) => sum + number);
    }
    return int.parse(input);
  }
}