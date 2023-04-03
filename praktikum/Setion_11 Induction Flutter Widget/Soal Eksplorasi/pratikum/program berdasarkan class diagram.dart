import 'dart:math';

abstract class Shape {
  double getArea();
  double getPerimeter();
}

class Circle implements Shape {
  final double radius;

  Circle(this.radius);

  @override
  double getArea() => pi * radius * radius;

  @override
  double getPerimeter() => 2 * pi * radius;
}

class Rectangle implements Shape {
  final double length;
  final double width;

  Rectangle(this.length, this.width);

  @override
  double getArea() => length * width;

  @override
  double getPerimeter() => 2 * (length + width);
}

class Square implements Shape {
  final double side;

  Square(this.side);

  @override
  double getArea() => side * side;

  @override
  double getPerimeter() => 4 * side;
}

void main() {
  final circle = Circle(5);
  print('Circle area: ${circle.getArea()}');
  print('Circle perimeter: ${circle.getPerimeter()}');

  final rectangle = Rectangle(6, 8);
  print('Rectangle area: ${rectangle.getArea()}');
  print('Rectangle perimeter: ${rectangle.getPerimeter()}');

  final square = Square(4);
  print('Square area: ${square.getArea()}');
  print('Square perimeter: ${square.getPerimeter()}');
}
