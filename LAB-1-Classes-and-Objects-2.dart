void main() {
  // EX1
  var rectangle = Rectangle(5, 10);
  print(rectangle.getArea());
  print(rectangle.getPerimeter());

  // Ex2
  var product = Product("Laptop", 1000, 2);
  print(product.getTotalCost());

  // Ex3
  Circle circle = Circle(5);
  print(circle.calculateArea());

  Square square = Square(4);
  print(square.calculateArea());
}

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double getArea() {
    return width * height;
  }

  double getPerimeter() {
    return 2 * (width + height);
  }
}

class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double getTotalCost() {
    return price * quantity;
  }
}

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    const PI = 3.14;
    return PI * (radius * radius);
  }
}

class Square extends Shape {
  double sideLength;

  Square(this.sideLength);

  @override
  double calculateArea() {
    return sideLength * sideLength;
  }
}
