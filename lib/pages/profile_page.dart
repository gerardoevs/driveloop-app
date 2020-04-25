import 'package:flutter/material.dart';

final TextStyle _propiedadFontStyle =
    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, height: 2);
final TextStyle _valorFontStyle = const TextStyle(fontSize: 16, height: 2);

class ProfilePage extends StatelessWidget {
  final Map<String, String> _usuario = {
    'nombre': 'Jorge',
    'apellido': 'Aguilar',
    'phone': '7654-5989',
    'dui': '04156845-4',
    'licence': '268464',
    'age': '24',
    'city': 'San Miguel',
    'location': 'La Belen'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de Usuario'),
      ),
      body: Card(
        margin: EdgeInsets.all(20),
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        borderOnForeground: true,
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Text('Datos del Usuario', style: TextStyle(fontSize: 20)),
            SizedBox(height: 5),
            Divider(thickness: 2),
            SizedBox(height: 5),
            CircleAvatar(radius: 50, child: Text('${_usuario['nombre'].substring(0, 1)}${_usuario['apellido'].substring(0, 1)}')),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Table(
                //border: TableBorder.all(style: BorderStyle.solid, width: 1),
                columnWidths: {0: IntrinsicColumnWidth(flex: 0.5)},
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: <TableRow>[
                  TableRow(children: [
                    Text('Nombre:', style: _propiedadFontStyle),
                    Text('${_usuario['nombre']}', style: _valorFontStyle),
                  ]),
                  TableRow(children: [
                    Text('Apellido:', style: _propiedadFontStyle),
                    Text('${_usuario['apellido']}', style: _valorFontStyle),
                  ]),
                  TableRow(children: [
                    Text('Teléfono:', style: _propiedadFontStyle),
                    Text('${_usuario['phone']}', style: _valorFontStyle),
                  ]),
                  TableRow(children: [
                    Text('DUI:', style: _propiedadFontStyle),
                    Text('${_usuario['dui']}', style: _valorFontStyle),
                  ]),
                  TableRow(children: [
                    Text('Licencia:', style: _propiedadFontStyle),
                    Text('${_usuario['licence']}', style: _valorFontStyle),
                  ]),
                  TableRow(children: [
                    Text('Edad:', style: _propiedadFontStyle),
                    Text('${_usuario['age']}', style: _valorFontStyle),
                  ]),
                  TableRow(children: [
                    Text('Ciudad:', style: _propiedadFontStyle),
                    Text('${_usuario['city']}', style: _valorFontStyle),
                  ]),
                  TableRow(children: [
                    Text('Area:', style: _propiedadFontStyle),
                    Text('${_usuario['location']}', style: _valorFontStyle),
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
