import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: FlutterLogo(size: 200),
            decoration: BoxDecoration(color: Colors.indigo),
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text('Clientes'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'clients');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.directions_car),
            title: Text('Garage'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'garage');
            },
          ),
        ],
      ),
    );
  }
}
