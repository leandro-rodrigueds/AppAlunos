
import 'package:flutter/material.dart';
import 'package:projeto/models/usuario.dart';

class UserTile extends StatelessWidget{
  final Usuario user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text(user.nomeAluno),
      subtitle: Text(user.nomeMae),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            color: Colors.orange,
            onPressed: (){},
            ),
          IconButton(
            icon: Icon(Icons.delete),
            color: Colors.redAccent,
            onPressed: (){},
          ),
        ],
        ),
      ),
    );
  }
}