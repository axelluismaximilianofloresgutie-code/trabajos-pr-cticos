import 'dart:io';

void main() {
  print("Ingrese un número:");
  int num = int.parse(stdin.readLineSync()!);

  int c = 0;

  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      c++;
    }
  }

  if (c == 2) {
    print("El número es primo");

    int respaldo = num;

    while (respaldo > 0) {
      int digito = respaldo % 10;
      int divisores = 0;

      for (int i = 1; i <= digito; i++) {
        if (digito % i == 0) {
          divisores++;
        }
      }

      print("El dígito $digito tiene $divisores divisores");

      respaldo ~/= 10;
    }
  } else {
    print("El número no es primo");
  }
}