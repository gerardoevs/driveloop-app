import 'package:flutter/material.dart';

final TextStyle _propiedadFontStyle =
    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, height: 2);
final TextStyle _valorFontStyle = const TextStyle(fontSize: 16, height: 2);

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

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  String _tabSelected = 'Información';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de Usuario'),
      ),
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: <Widget>[          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  child: Text(
                    '${_usuario['nombre'].substring(0, 1)}${_usuario['apellido'].substring(0, 1)}',
                    style: TextStyle(fontSize: 30),
                  ),
                  radius: 60,
                ),
                SizedBox(width: 40),
                Text(
                  '${_usuario['nombre']} ${_usuario['apellido']}',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _tabOptions(['Información', 'Valoración'])
                ),
                Divider(thickness: 2, height: 0, color: Colors.black54),
                (_tabSelected == 'Valoración')? _valorationTab('Valoración del Usuario') : _informationTab('Datos del Cliente')
              ],
            ),
          ),
        ],
      )
    );
  }

  List<Widget> _tabOptions(List options) {
    return options.map((option) => 
      GestureDetector(
        onTap: () {
          setState(() {
            _tabSelected = option;
          });
        },
        child: Container(child: Text(option, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
          decoration: BoxDecoration(
            color: (option == _tabSelected)? Colors.grey[300]: null,
            border: Border.all(width: 1),
            borderRadius: BorderRadius.vertical(top: Radius.circular(14))
          ),
        ),
      )
    ).toList();
  }

  Widget _informationTab(String title) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          color: Colors.grey[300], 
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.only(left: 10),
          child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
          child: Table(
            columnWidths: {0: IntrinsicColumnWidth(flex: 0.5)},
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: <TableRow>[
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
        ),
      ],
    );
  }

  Widget _valorationTab(String title) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          color: Colors.grey[300], 
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.only(left: 10),
          child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
        ),
      ],
    );
  }
}
