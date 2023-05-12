//como declarar clases en dart
class Square {
  //------------------------Propiedades, si tiene _ es privada--------------------
  double _side;

  //----------------------Constructor-------------------------
  Square({required double side})
      //asersion para poner condiciones y evitar ecibir valores no esperados
      : assert(side >= 0, 'side must be >=0'),
        _side = side;
  //si no fuera privada se puede hacer asi
  //Square({required this.side});

  //setter y getter

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0';
    _side = value;
  }

  //-------------Metodos--------------
  double calculateArea() {
    return _side * _side;
  }

  //------@override se coloca ya que estamos modificando un metodo herdado de una clase padre-------
  @override
  String toString() {
    return 'Side: $_side Area: ${calculateArea()}';
  }
}
