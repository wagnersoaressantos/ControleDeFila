import 'dart:io';

void main(){

  String cmd = "000";

  while (cmd != "4") {
    
    print('1. Gerenciamento de Atletas');
    print('2. Gerenciamento de Treinos.');
    print('3. Gerenciamento de Exercícios.');
    print('4. Sair.');

    cmd = stdin.readLineSync()!;

    if (cmd == "4") {

      print('PROGRAMA ENCERRADO');
      
    } else {
      print('COMANDO INCORRETO');
    }

  }

}