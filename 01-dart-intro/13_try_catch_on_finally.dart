void main() async {
  print('inicio del programa');

  try {
    final value = await httpGet('https://santiago.com');
    print('Exitoso: $value');
  } on Exception catch (err) {
    print('Tenemos una excepción: $err');
  } catch (err) {
    print('Tenemos un Error: $err');
  } finally {
    print('Fin del try y catch');
  }

  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parametros en la Url');
  //throw 'Error en la petición';
  //return 'Respuesta http recibida';
}
