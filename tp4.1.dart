import 'dart:io';
void main(){
  String vocales = "";
  String consonante = "";
  List<String> nombres =[];
  for(int i=0; i<10; i++){
    print("ingrese el nombre:");
    nombres.add(stdin.readLineSync()!);
  }
  for(String nombre in nombres){
  for(int i=0; i<nombre.length; i++){
    String letra = nombre[i].toLowerCase();
    if ("aeiou".contains(letra)){
      vocales += letra;
    } else{
      consonante += letra;
    }
  }
  }
  print("vocales: $vocales");
  print("consonate: $consonante");
}