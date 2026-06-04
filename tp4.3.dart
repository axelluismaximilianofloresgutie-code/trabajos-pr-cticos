import 'dart:io';
void main() {
  int suma=0;
  List<int> vector = [];
  for (int i = 0; i<5; i++){
    print("ingrese un numero:");
    vector.add(int.parse(stdin.readLineSync()!));
  }
  for (int i = 0; i<5; i++){
     suma = suma + vector[i];
  }
    double promedio = suma / 5;

  print("el promedio es de: $promedio");
}