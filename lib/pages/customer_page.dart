import 'package:Driveloop/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class CustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driveloop'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app), 
            onPressed: () => Navigator.pop(context),
            tooltip: 'Cerrar Sesion',
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Página principal de usuarios clientes'),
      ),
    );
  }
}