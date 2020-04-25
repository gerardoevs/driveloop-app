import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ReceivedPage extends StatefulWidget {
  @override
  _ReceivedPage createState() => _ReceivedPage();
}

class _ReceivedPage extends State<ReceivedPage> {
  final List<Map<String, String>> _notificaciones = [
      {'nombre': 'Josias', 'marca': 'Toyota', 'modelo': 'Corolla', 'tiempo': '5 dias'}, 
      {'nombre': 'Carlos', 'marca': 'Honda', 'modelo': 'CRV', 'tiempo': '3 dias'}, 
      {'nombre': 'Mario', 'marca': 'Mitsubishi', 'modelo': 'Lancer', 'tiempo': '8 dias'}, 
      {'nombre': 'Karina', 'marca': 'Nissan', 'modelo': 'Sentra', 'tiempo': '4 dias'}, 
      {'nombre': 'Alberto', 'marca': 'Kia', 'modelo': 'Forte', 'tiempo': '7 dias'}
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solicitudes Entrantes'),
      ),
      body: _notificaciones.isNotEmpty? ListView.builder(
        itemCount: _notificaciones.length,
        itemBuilder: (BuildContext context, int i) {
          return _notificationCard(_notificaciones[i], i);
        }
      ): Center(child: Text('No hay notificiones nuevas')),
    );
  }

  Widget _notificationCard(Map<String, String> data, int index) {
    return Card(
      child: ListTile(
        isThreeLine: true,
        leading: Image.network('https://picsum.photos/seed/asd/300'),
        title: Text('${data['nombre']}'),
        subtitle: Text('${data['marca']} ${data['modelo']}\npor: ${data['tiempo']}', softWrap: false, overflow: TextOverflow.fade,),
        onTap: () {
          showDialog(context: context, child: _notificationDialog(data));
        },
        trailing: ButtonBar(
          mainAxisSize: MainAxisSize.min,
          buttonPadding: EdgeInsets.zero,
          children: <Widget>[
            IconButton(icon: Icon(Icons.thumb_down), color: Colors.pink, onPressed: (){
              setState(() {
                if(_notificaciones.isNotEmpty){
                  _notificaciones.removeAt(index);
                }               
              });
            }, iconSize: 22),
            IconButton(icon: Icon(Icons.thumb_up), color: Colors.indigo, onPressed: (){
              setState(() {
                if(_notificaciones.isNotEmpty){
                  _notificaciones.removeAt(index);
                }  
              });
            }, iconSize: 22)
          ],
        )
      )
    );
  }

  SimpleDialog _notificationDialog(Map<String, String> data) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      title: Center(
        child: Text('Detalles de la solicitud'),
      ),
      children: <Widget>[
        FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: 'https://picsum.photos/seed/asd/350/200', height: 200),
        Text.rich(TextSpan(
          children: [
            TextSpan(text: 'El usuario '),
            TextSpan(text: data['nombre'], style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: '\nha solicitado tu vehiculo: '),
            TextSpan(text: '${data['marca']} ${data['modelo']}', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: '\n por un periodo de: '),
            TextSpan(text: '${data['tiempo']}', style: TextStyle(fontWeight: FontWeight.bold)),
          ]
          ), 
        textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}