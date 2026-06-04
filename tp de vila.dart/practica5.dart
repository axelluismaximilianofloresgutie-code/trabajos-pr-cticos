import 'dart:io';

void main() {
  print("Ingrese un numero: ");
  int num = int.parse(stdin.readLineSync()!);

  int c = 0;
  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      c++;
    }
  }

  if (c == 2) {
    print("$num es primo");

    int respaldo = num;
    while (respaldo > 0) {
      int digito = respaldo % 10;
      respaldo = respaldo ~/ 10;

      if (digito > 0) {
        int divDigito = 0;
        for (int i = 1; i <= digito; i++) {
          if (digito % i == 0) {
            divDigito++;
          }
        }
        print("El digito $digito tiene $divDigito divisores");
      }
    }
  } else {
    print("$num no es primo");
  }
}