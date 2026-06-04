import 'dart:io';

void main() {
  int tarifa = 0;

  int moto = 1500;
  int auto = 3000;
  int camioneta = 4500;

  double entrada, salida, horas;
  int horasFinal;
  int opcion;

  print("Ingrese la hora de entrada:");
  entrada = double.parse(stdin.readLineSync()!);

  print("Ingrese la hora de salida:");
  salida = double.parse(stdin.readLineSync()!);

  horas = salida - entrada;

  // Redondea hacia arriba para cobrar la fracción de hora
  horasFinal = horas.ceil();

  print("Elija una opción:");
  print("1 - Moto");
  print("2 - Auto");
  print("3 - Camioneta");

  opcion = int.parse(stdin.readLineSync()!);

  if (opcion == 1) {
    tarifa = horasFinal * moto;
  } else if (opcion == 2) {
    tarifa = horasFinal * auto;
  } else if (opcion == 3) {
    tarifa = horasFinal * camioneta;
  } else {
    print("Opción incorrecta");
    return;
  }

  print("Cantidad de horas: $horasFinal");
  print("Importe a pagar: \$${tarifa}");
}