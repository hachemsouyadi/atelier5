import 'dart:io';

class NombreNegatifException implements Exception{
  String moner() => 'Erreur :le nombre peut pas etre negatif';
}

void main() {
  try {
    stdout.write("Entrez un nombre : ");
    int nombre = int.parse(stdin.readLineSync()!);
    if (nombre<0){
      throw NombreNegatifException();
    }
    print("Le carré de $nombre est :${nombre * nombre}");
  } on NombreNegatifException catch(e){
    print(e);
  } catch (e) {
    print("erreur inattendue :$e");
  } finally {
    print("programe done");
  }
}
