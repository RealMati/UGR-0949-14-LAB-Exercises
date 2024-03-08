import 'dart:io';

void main() {
  // EX1
  try {
    String userInput = stdin.readLineSync()!;
    int number = int.parse(userInput);
    print(number);
  } catch (e) {
    print("error msg");
  }

  // Ex2
  divide(10, 0);

  // ex3
  readFile(
      '/home/family/Documents/3rd year 2nd semester/Mobile App Development/practice/LAB-1-Error-Handling.dart');
}

// ex2
void divide(int numinator, int denominator) {
  try {
    print(numinator ~/ denominator);
  } catch (e) {
    print("Error division by zero");
  }
}

// ex3
void readFile(String filePath) {
  try {
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();
    print('file reading done');
  } catch (e) {
    if (e is FileSystemException) {
      print("ErrorMsg: error when reading ffile.");
    } else {
      print("An unexpected error, message info-->: $e");
    }
  }
}
