import 'dart:io';

void main() {
  print("ATENDIMENTO DO HOSPITAL PAZ MUNDIAL\n");

  String cmd = "-1";

  List<List<String>> bd = [];

  while (cmd != "3") {
    print("1. Cadastrar novo paciente");
    print("2. Chamar paciente na fila");
    print("3. Encerrar programa");

    cmd = stdin.readLineSync()!;

    if (cmd == "1") {
      List<String> novoUsuario = [];

      print("Qual o nome do paciente?");
      String nome = stdin.readLineSync()!;

      print("Qual a idade do paciente?");
      String idadeSTR = stdin.readLineSync()!;

      print("Qual o grau de gravidade do caso?");
      String grauSTR = stdin.readLineSync()!;

      novoUsuario.add(nome);
      novoUsuario.add(idadeSTR);
      novoUsuario.add(grauSTR);

      if (bd.length == 0) {
        bd.add(novoUsuario);
      } else {
        int i = 0;

        while (i < bd.length) {
          if (int.parse(bd[i][2]) > int.parse(novoUsuario[2])) {
            i++;
          } else if (bd[i][2] == novoUsuario[2]) {
            if (int.parse(bd[i][1]) > int.parse(novoUsuario[1])) {
              i++;
            } else if (int.parse(bd[i][1]) == int.parse(novoUsuario[1])) {
              i++;
              break;
            } else {
              break;
            }
          } else {
            break;
          }
        }
        bd.insert(i, novoUsuario);
      }

      print("PACIENTE CADASTRADO NA FILA");
    } else if (cmd == "2") {
      if (bd.length == 0) {
        print("SEM PACIENTES NO MOMENTO");
      } else {
        print("Nome: " + bd[0][0]);
        print("Idade: " + bd[0][1]);
        print("Gravidade: " + bd[0][2]);

        bd.removeAt(0);
      }
    } else if (cmd == "3") {
      print("PROGRAMA ENCERRADO");
    } else {
      print("Comando incorreto.");
    }
    print("_" * 10);
  }
}
