
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
      trailing: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: (){},
            ),
          IconButton(
            onPressed: (){},
          
            ),
        ],
      ),
    );
  }
}