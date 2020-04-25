import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({Key key, @required this.tipoUsuario}) : super(key: key);

  final String tipoUsuario;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: _crearItems(context)),
    );
  }

  List<Widget> _crearItems(BuildContext context) {
    final List<Widget> list = [];

    list.add(DrawerHeader(
      child: FlutterLogo(size: 200),
      decoration: BoxDecoration(color: Colors.indigo),
    ));

    drawerItems[tipoUsuario].forEach((data) {
      list.add(Column(
        children: <Widget>[
          ListTile(
            leading: Icon(data['icono']),
            title: Text(data['nombre']),
            onTap: () => Navigator.pushNamed(context, data['ruta']),
          ),
          Divider()
        ],
      ));
    });

    list.add(Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Cerrar Sesión'),
            onTap: () => Navigator.pushReplacementNamed(context, 'login'),
          ),
          Divider()
        ],
      ));

    return list;
  }
}

const Map<String, List> drawerItems = {
  'owner': [
    {'nombre': 'Mi Garage', 'icono': Icons.directions_car, 'ruta': 'garage'},
    {'nombre': 'Solicitudes Recibidas', 'icono': Icons.inbox, 'ruta': 'received'},
    {
      'nombre': 'Clientes',
      'icono': Icons.supervised_user_circle,
      'ruta': 'clients'
    },
    {'nombre': 'Historial', 'icono': Icons.history, 'ruta': 'records'},
    {'nombre': 'Perfil', 'icono': Icons.person, 'ruta': 'profile'},
  ],
  'customer': [
    {
      'nombre': 'Solicitudes',
      'icono': Icons.supervised_user_circle,
      'ruta': 'requests'
    },
    {'nombre': 'Historial', 'icono': Icons.history, 'ruta': 'records'},
    {'nombre': 'Perfil', 'icono': Icons.person, 'ruta': 'profile'},
  ],
};
