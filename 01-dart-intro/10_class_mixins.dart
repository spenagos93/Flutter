abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print('estoy volando');
}

abstract class Caminante {
  void caminar() => print('estoy caminando');
}

abstract class Nadador {
  void nadar() => print('estoy nadando');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador {}

void main() {
  final flipper = Delfin();
  flipper.nadar();

  final bat = Murcielago();
  bat.caminar();
  bat.caminar();

  final namor = Pato();
  namor.caminar();
  namor.nadar();
  namor.volar();
}
