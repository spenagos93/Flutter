void main() async {
  print('inicio del programa');

  try {
    final value = await httpGet('https://santiago.com');
    print(value);
  } catch (err) {
    print('Error: $err');
  }

  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error en la petición';
  //return 'Respuesta http recibida';
}
