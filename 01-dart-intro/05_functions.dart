void main() {
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(10, 20)}');
  print('Resta: ${restTwoNumbers(10, 5)}');
  print(saludar(nombre: 'Pedro', saludo: 'Hola'));
}

// formas de declarar variables de forma estandar y tipo arrow function

String greetEveryone() => '¡Hello everyone!';

int addTwoNumbers(int a, int b) {
  return a + b;
}

// con el array pongo el segundo argumento como opcional y el valor por defecto si no se recibe
int restTwoNumbers(int a, [int b = 0]) => a - b;
//arrow function

String saludar({required String saludo, String nombre = 'Santiago'}) {
  return '$saludo $nombre';
}
