import 'package:flutter/material.dart';
import 'package:projeto/components/user_tile.dart';
import '../data/dummy_users.dart';

class Tela2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuario = {...DUMMY_USER};

    return Scaffold(
      appBar: AppBar(
        title: Text('Alunos'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.green,
            onPressed: (){},
            ),
        ],
      ),
      body: ListView.builder(
        itemCount: usuario.length,
        itemBuilder: (ctx, i) => UserTile(usuario.values.elementAt(i)),
        
      ),
    );
  }
}