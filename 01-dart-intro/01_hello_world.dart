//nombres de archivos en dart siempre van con snake Case
void main() {
  //var myName = 'Santiago';
  const myName = 'Santiago';
  //late final myName;
  //late String myName = "Santiago";

  print('Hola $myName');
  print('Hola' + ' ' + myName);
  print("Hola ${myName.toUpperCase()} ${2 + 3}");
}
