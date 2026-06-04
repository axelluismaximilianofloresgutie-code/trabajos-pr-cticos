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
  } else {
    print("$num No es primo");
  }
}