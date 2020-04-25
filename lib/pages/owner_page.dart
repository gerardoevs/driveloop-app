import 'package:Driveloop/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class OwnerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driveloop'),
      ),
      drawer: AppDrawer(tipoUsuario: 'owner'),
      body: Center(
        child: Text('Página principal de usuarios clientes'),
      ),
    );
  }
}
