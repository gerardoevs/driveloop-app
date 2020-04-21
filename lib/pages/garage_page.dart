import 'package:flutter/material.dart';

class GaragePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Garage de Autos'),
      ),
      body: Center(
        child: Text('Página para ver informacion de mis vehiculos'),
      ),
    );
  }
}
