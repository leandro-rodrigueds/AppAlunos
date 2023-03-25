import 'package:flutter/material.dart';

class Tela0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Trancolar'),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Image.asset(
            'assets/images/alt.png',
            width: double.infinity,
            height: double.infinity,
            ),
            Center(
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 2, 150),
                    ),
                    child: Text('Ir para a tela 3'),
                    onPressed: () {
                      //Navegar para a tela 3
                      Navigator.pushNamed(context, '/terceira');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}