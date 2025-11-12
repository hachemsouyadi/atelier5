class MotdepasseCourtException implements Exception {
  String msger() => 'Motdepasse est : trop court (exception personnalisée)';
}
void verifierMotdepasse(String mp){
  if(mp.length<6){
    throw MotdepasseCourtException();
  }
}
void main(){
  try{
    verifierMotdepasse('123'); 
  } catch(e){
    print('erreur detectee : $e');
  }
}
