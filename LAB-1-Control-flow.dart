import 'dart:io';

void main() {
  //Ex-1
  int? number = int.parse(stdin.readLineSync()!);
  // int number = 11;
  if (number % 2 == 1) {
    print("Odd");
  } else {
    print("Even");
  }

  // Ex-2
  for (int i = 1; i < 11; i++) {
    print(i);
  }

  //Ex-4
  double num1 = 5;
  double num2 = 7;
  String operation = "*";
  switch (operation) {
    case '+':
      print(num1 + num2);
      break;
    case '-':
      print(num1 - num2);
      break;
    case '*':
      print(num1 * num2);
      break;
    case '/':
      print(num1 / num2);
      break;
  }

  // Ex-5
  const grade = 'A';
  switch (grade) {
    case 'A':
      print("A");
      break;
    case 'B':
      print("B");
      break;
    case 'C':
      print("C");
      break;
    case 'D':
      print("D");
      break;
    default:
      print('F');
  }
}
