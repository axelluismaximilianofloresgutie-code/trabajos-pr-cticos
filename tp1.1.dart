import 'dart:io';

void main() {
  print("Cuantos numeros ingresar: ");
  int n = int.parse(stdin.readLineSync()!);

  int c = 0;
  int soma = 0;

  for (int i = 1; i <= n; i++) {
    print("Ingrese numero: ");
    int num = int.parse(stdin.readLineSync()!);

    bool primo = true;

    if (num <= 1) {
      primo = false;
    } else {
      for (int j = 2; j < num; j++) {
        if (num % j == 0) {
          primo = false;
          break;
        }
      }
    }

    if (primo) {
      c++;
      soma += num;
      print("$num es primo");
    }
  }

  print("Cantidad de primos: $c");
  print("Suma de primos: $soma");
}