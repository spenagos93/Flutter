import 'class_square.dart';

void main() {
  final square1 = Square(side: -10);
  //square1.side = -5; usando el setter
  print(square1);
  print(square1.calculateArea());
}
