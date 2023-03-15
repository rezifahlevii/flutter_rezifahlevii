void main() {
    final square = Square(side: 10.50);
    displayArea(square);
}
//Adding Extra functions to display square vaule it helps write better code.
void displayArea(Shape shape) {
    print(shape.area);
}
//using computed properties "get".
abstract class Shape {
    double get area;
}
class Square implements Shape {
    Square({
        required this.side
    });
    final double side;
    double get area => side * side;
}