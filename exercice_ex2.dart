import 'dart:io';

void main(){
stdout.write('entrez votre age :');
var ageText = stdin.readLineSync();
var age = int.parse(ageText!);
try{
  var age = int.parse(ageText!);
} on FormatException catch (e){
  print('format invalide : $e');
}
finally {
  print('Fin doperation');
}

}
