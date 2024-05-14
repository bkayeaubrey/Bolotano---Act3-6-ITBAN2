import 'dart:io';

void main() {
  // Prompt the user to enter the file name
  print('Enter the name of the file you want to read:');
  String fileName = stdin.readLineSync()!.trim();

  // Attempt to open and read the file
  try {
    File file = File(fileName);
    if (!file.existsSync()) {
      throw FileSystemException('File not found', fileName);
    }

    // Read the file contents
    String contents = file.readAsStringSync();

    // Print the contents to the console
    print('File contents:');
    print(contents);
  } on FileSystemException catch (e) {
    print('Error: ${e.message}');
  } catch (e) {
    print('Error: $e');
  }
}
