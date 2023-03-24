import 'package:flutter/material.dart';

class Tela0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Tela 0'),

      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
              ),
              child: Text('Ir para a tela 1'),
              onPressed: () {
                //Navegar para a tela 1
                Navigator.pushNamed(context, '/primeira');
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
              child: Text('Ir para a tela 2'),
              onPressed: () {
                //Navegar para a tela 2
                Navigator.pushNamed(context, '/segunda');
              },
            ),
          ],
        ),
      ),
      body: Container(
        
      )
    );
  }
}
