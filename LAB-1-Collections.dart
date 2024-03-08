import 'dart:math';

void main() {
  // ex1
  List<String> MYhobbies = ['Reading'];
  MYhobbies.add('movies');
  MYhobbies.remove('reading');
  MYhobbies.sort();
  if (MYhobbies.isEmpty) {
    print('list empty.');
  } else {
    print('list not empty.');
  }

  // ex2
  List<int> nums = List.generate(5, (index) => Random().nextInt(10));
  Set<int> sett = nums.toSet();
  print(sett);

  // ex3
  Map<String, int> dictionary = {'abebe': 90, 'chala': 80};

  dictionary.putIfAbsent('abebe', () => 88);

  dictionary.forEach((name, mark) {
    print('$name: $mark');
  });

  String searchName = 'ayele';
  if (dictionary.containsKey(searchName)) {
    print('$searchName is in the dictionary');
  } else {
    print('$searchName is not in the dictionary');
  }

  // ex4
  Map<String, int> cart = {};
  cart["apple"] = 40;
  cart["carot"] = 10;

  int total = 0;
  cart.forEach((key, value) {
    total += value;
  });
  print(total);

  // ex5
  Student student1 = Student('abebe', [85, 90, 88, 92]);
  print(student1.getAv());
}

// ex5
class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double getAv() {
    if (marks.isEmpty) {
      return 0.0;
    }
    int sum = 0;
    for (int number in marks) {
      sum += number;
    }
    return sum / marks.length;
  }
}
