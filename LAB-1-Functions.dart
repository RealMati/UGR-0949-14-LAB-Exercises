void main() {
  // Ex1
  double res1 = addNums(5, 7);
  print(res1);

  // EX2
  bool res2 = isPrime(7);
  print(res2);

  // Ex3
  String res3 = reverseString("helloWorld!");
  print(res3);
}

// Ex1
double addNums(double num1, double num2) {
  return num1 + num2;
}

// Ex2
bool isPrime(int num) {
  for (int i = 1; i < num; i++) {
    if (num % 2 == 0) {
      return false;
    }
  }
  return true;
}

// Ex3
String reverseString(String str) {
  String ans = "";

  for (int i = str.length - 1; i >= 0; i--) {
    ans = ans + str[i];
  }
  return ans;
}
