import 'package:flutter/material.dart';

class ClientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
      ),
      body: Center(
        child: Text('Página para ver el listado de clientes'),
      ),
    );
  }
}