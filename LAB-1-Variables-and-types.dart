import 'dart:io';

void main() {
  String name = "Mati Milkessa Ensermu";
  int age = 19;
  String favColor = "Blue";
  print("$name $age $favColor");

  const speedOfLight = 299792458;
  int? distance = int.parse(stdin.readLineSync()!);
  print("distance is $distance");
  double time = distance / speedOfLight;
  print(time);
}
