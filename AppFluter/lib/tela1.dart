import 'package:flutter/material.dart';
import 'package:projeto/tela2.dart';
import 'tela2.dart';

class Tela1 extends StatelessWidget {
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
          child: Column(
            //botao ocupa o espaço todo
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                 decoration: InputDecoration(
                    label: Text('Nome do aluno'),
                    hintText: 'Digite o nome do aluno',
                 
                 ),
              ),
              TextFormField(
                 decoration: InputDecoration(
                    label: Text('Nome da Mãe'),
                    hintText: 'Digite o nome da mãe do aluno',
                 
                 ),
              ),
              SizedBox(height: 12,),
              ElevatedButton(
                onPressed: (){},
                child: Text(
                  'cadastra'
                  )
                )
            ],
          ),
        ),

      
        
        
        
      ),
    );
  }
}