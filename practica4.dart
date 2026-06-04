import 'dart:io';

void main() {
  print("Ingrese un numero: ");
  int num = int.parse(stdin.readLineSync()!);

  int suma = 0;
  int respaldo = num;

  while (respaldo > 0) {
    int digito = respaldo % 10;
    suma += digito;
    respaldo = respaldo ~/ 10;
  }

  int divisores = 0;
  for (int i = 1; i <= suma; i++) {
    if (suma % i == 0) {
      divisores++;
    }
  }

  if (suma % 2 != 0 && divisores > 3) {
    print("ES magico");
  } else {
    print("No es magico");
  }
}