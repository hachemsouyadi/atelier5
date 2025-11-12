void verifiermotdepass(String mp){
  if(mp.length<6){
    throw Exception('Mot de passe trop court');}
}
void main() {
  try{
    verifiermotdepass('1234'); 
  }catch(e){
    print('Erreur : $e');
  }
}

