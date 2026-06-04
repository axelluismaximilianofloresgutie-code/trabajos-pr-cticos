import 'dart:io';

void main() {
  print("Ingrese un numero: ");
  int num = int.parse(stdin.readLineSync()!);

  int soma = 0;
  int respaldo = num;

  while (respaldo > 0) {
    int digito = respaldo % 10;
    soma += digito;
    respaldo = respaldo ~/ 10;
  }

  print("La suma de los digitos de $num es: $soma");
}