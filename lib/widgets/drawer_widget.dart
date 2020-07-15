import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({Key key, @required this.tipoUsuario}) : super(key: key);

  final String tipoUsuario;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: CircleAvatar(
                    child: Text('USER'),
                    maxRadius: 40,
                  )
                ),
                Text('Bienvenido a Driveloop',
                  style: TextStyle(fontSize: 18, color: Colors.white)
                )
              ],
            ),
            decoration: BoxDecoration(color: Colors.indigo),
          ),

          _crearItems(context),
          
          Divider(thickness: 1),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Cerrar Sesión'),
            onTap: () => Navigator.pushReplacementNamed(context, 'login'),
          )
        ],
      ),
    );
  }

  Widget _crearItems(BuildContext context) {
    return Column(
      children: drawerItems[tipoUsuario].map((data) => 
        ListTile(
          leading: Icon(data['icono']),
          title: Text(data['nombre']),
          trailing: Icon(Icons.arrow_right),
          onTap: () => Navigator.pushNamed(context, data['ruta'])
        )
      ).toList()
    );
  }
}

const Map<String, List> drawerItems = {
  'owner': [
    {'nombre': 'Mi Garage', 'icono': Icons.directions_car, 'ruta': 'garage'},
    {
      'nombre': 'Solicitudes Recibidas',
      'icono': Icons.inbox,
      'ruta': 'received'
    },
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
