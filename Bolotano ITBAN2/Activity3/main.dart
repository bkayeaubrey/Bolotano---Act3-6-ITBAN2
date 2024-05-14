import 'dart:io';

void main() {
  final inputFile = File('activity3.txt');
  final outputFile = File('output.txt');

  final sum = inputFile.readAsLinesSync().map(int.parse).reduce((a, b) => a + b);

  outputFile.writeAsStringSync(sum.toString());
  
  print('Sum of numbers has been calculated and written to output.txt.');
}
