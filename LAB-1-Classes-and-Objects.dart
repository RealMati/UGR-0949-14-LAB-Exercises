void main() {
  // Ex1
  var person1 = Person("Mati", 19, "Addis Ababa");
  print(person1.name);

  person1.setAddress("Burayu");
  print(person1.address);

  // Ex2
  var student1 = Student("Abebe", 20, "address1", 1, 85);
  var student2 = Student("Chala", 21, "address2", 2, 90);

  var total = getTotal(student1, student2);
  print(total);

  var average = getAverage(student1, student2);
  print(average);
}

// Ex1
class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void setName(String newName) {
    this.name = newName;
  }

  void setAge(String newAge) {
    this.name = newAge;
  }

  void setAddress(String newAddress) {
    this.name = newAddress;
  }
}

// Ex2
class Student extends Person {
  int rollNumber;
  double marks;

  Student(super.name, super.age, super.address, this.rollNumber, this.marks);
}

double getTotal(student1, student2) {
  return student1.marks + student2.marks;
}

double getAverage(student1, student2) {
  return (student1.marks + student2.marks) / 2;
}
