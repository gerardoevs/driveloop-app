import 'package:Driveloop/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class OwnerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driveloop'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          PopupMenuButton<String>(
            icon: Icon(Icons.notifications),
            offset: Offset(0, 60),
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: ListTile(trailing: Icon(Icons.new_releases) ,title: Text('¡Tienes una solicitud nueva!'))),
                PopupMenuItem(child: ListTile(trailing: Icon(Icons.new_releases) ,title: Text('¡Tienes una solicitud nueva!'))),
                PopupMenuItem(child: ListTile(trailing: Icon(Icons.new_releases) ,title: Text('Un cliente canceló su solicitud'))),
                PopupMenuItem(child: ListTile(trailing: Icon(Icons.new_releases) ,title: Text('Un cliente canceló su solicitud'))),
                PopupMenuItem(child: ListTile(trailing: Icon(Icons.new_releases) ,title: Text('¡Tienes una solicitud nueva!'))),
              ];
            }
          )
        ],
      ),
      drawer: AppDrawer(tipoUsuario: 'owner'),
      body: Center(
        child: Text('Página principal de usuarios clientes'),
      ),
    );
  }
}
