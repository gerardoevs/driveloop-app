import 'package:flutter/material.dart';

class BacklogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial'),
      ),
      body: Center(
        child: Text('Página para ver el historial de vehiculos alquilados'),
      ),
    );
  }
}