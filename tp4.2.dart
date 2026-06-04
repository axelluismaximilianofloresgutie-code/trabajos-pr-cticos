import 'dart:io';
void main(){
  List<int> numeros = [];
  int cantidadPrimos = 0;
  for(int i = 0; i<8; i++){
    print("ingrese el elemento");
    numeros.add(int.parse(stdin.readLineSync()!));
  }
  for(int numero in numeros){
    int divisores = 0;
    for(int i = 1; i<= numero; i++){
      if(numero % i == 0){
        divisores++;
      }
    }
    if(divisores == 2){
      cantidadPrimos++;
    }
  }
  print("cantidadde primos: $cantidadPrimos");
}