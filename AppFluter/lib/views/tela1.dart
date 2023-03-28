import 'package:flutter/material.dart';
import 'package:projeto/views/tela2.dart';
import 'tela2.dart';
import 'tela3.dart';

class Tela1 extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _nomeAluno = TextEditingController();
  final _nomeMae = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Cadastra Aluno'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _nomeAluno,
                  decoration: InputDecoration(
                    label: Text('Nome do aluno'),
                    hintText: 'Digite o nome do aluno',
                  ),
                  validator: (nomeAluno) {
                    if (nomeAluno == null || nomeAluno.isEmpty) {
                      return 'Digite seu nome';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _nomeMae,
                  decoration: InputDecoration(
                    label: Text('Nome da Mãe'),
                    hintText: 'Digite o nome da mãe do aluno',
                  ),
                  validator: (nomeMae) {
                    if (nomeMae == null || nomeMae.isEmpty) {
                      return 'Digite o nome da sua mãe';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      logar();
                    }
                  },
                  child: Text('Cadastra'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  logar() async{
    print('Logando....');
  }

}
