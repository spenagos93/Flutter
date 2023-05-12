void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  final iroman = Hero.fromJson(rawJson);
//   final iroman = Hero(name: 'Tony Stark', power: 'Money', isAlive: false);
  print(iroman.toString());
  print(iroman.name);
  print(iroman.power);
  print(iroman.isAlive);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return 'name:$name, power:$power, isAlive:${isAlive ? 'Yes' : 'Nope'}';
  }
}
