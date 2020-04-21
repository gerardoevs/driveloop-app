import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          color: Colors.indigo,
          textColor: Colors.white,
          child: Text('Iniciar Sesion'),
          onPressed: () => Navigator.pushNamed(context, 'customer'),
        ),
      )
    );
  }
}
