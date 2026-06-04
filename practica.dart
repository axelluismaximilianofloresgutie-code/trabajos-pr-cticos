import 'dart:io';
void main() {
  int num = 1231237745428034;
  int suma = 0;
  int multiplicacion = 1;
  int respaldo = num;
  int digito = 0;
  int contadorPrimos = 0;

  while (respaldo > 0) {
    digito = respaldo % 10;

    if (digito % 2 == 0) {
      suma += digito;
    } else {
      multiplicacion *= digito;
    }

    if (digito == 2 ||
        digito == 3 ||
        digito == 5 ||
        digito == 7) {
      contadorPrimos++;
    }

    respaldo ~/= 10;
  }

  print("La suma de los dígitos pares es: $suma");
  print("El resultado de la multiplicación de los dígitos impares es: $multiplicacion");
  print("Cantidad de dígitos primos: $contadorPrimos");
}