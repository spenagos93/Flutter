void main() {
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneración');
  print(wolverine.toString());
  print(wolverine.power);
  print(wolverine.name);
  print(wolverine.origin);
}

class Hero {
  String? name;
  String? power;
  String? origin;

  Hero({required this.name, required this.power, this.origin = 'Desconocido'});

  //Hero( String pName, String pPower)
  //: name = pName,
  //power = pPower;

  @override
  String toString() {
    return 'name: $name power:$power origin: $origin';
  }
}
