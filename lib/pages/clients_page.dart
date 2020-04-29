import 'package:flutter/material.dart';

class ClientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/alvaro.jpg'),
                  ),
                  title: Text("Alvaro Vladimir"),
                  trailing: FlatButton(
                    child: Text("Ver Detalles"),
                    onPressed: (){},
                  ),
                )
              ],
            )
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/milton.jpg'),
                  ),
                  title: Text("Milton Granados"),
                  trailing: FlatButton(
                    child: Text("Ver Detalles"),
                    onPressed: (){},
                  ),
                )
              ],
            )
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/gerardo.jpg'),
                  ),
                  title: Text("Gerardo Villalta"),
                  trailing: FlatButton(
                    child: Text("Ver Detalles"),
                    onPressed: (){},
                  ),
                )
              ],
            )
          ),
        ],
      )
    );
  }
}