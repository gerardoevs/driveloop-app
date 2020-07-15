import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ReceivedPage extends StatefulWidget {
  @override
  _ReceivedPage createState() => _ReceivedPage();
}

class _ReceivedPage extends State<ReceivedPage> {
  final List<Map<String, String>> _notificaciones = [
      {'nombre': 'Josias Hernandez', 'marca': 'Toyota', 'modelo': 'Corolla', 'tiempo': '5 dias'}, 
      {'nombre': 'Carlos Hernandez', 'marca': 'Honda', 'modelo': 'CRV', 'tiempo': '3 dias'}, 
      {'nombre': 'Mario Hernandez', 'marca': 'Mitsubishi', 'modelo': 'Lancer', 'tiempo': '8 dias'}, 
      {'nombre': 'Karina Hernandez', 'marca': 'Nissan', 'modelo': 'Sentra', 'tiempo': '4 dias'}, 
      {'nombre': 'Alberto Hernandez', 'marca': 'Kia', 'modelo': 'Forte', 'tiempo': '7 dias'}
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
        leading: Image.network(
          'https://images.locanto.com.sv/4917901862/Toyota-Corolla-2018-de-Agencia-Venta_1.jpg',
          width: 70
        ),
        title: Text('${data['nombre']}'),
        subtitle: Text('${data['marca']} ${data['modelo']} por: ${data['tiempo']}', softWrap: false, overflow: TextOverflow.ellipsis),
        onTap: () {
          showDialog(context: context, child: _notificationDialog(data));
        },
        trailing: ButtonBar(
          mainAxisSize: MainAxisSize.min,
          buttonPadding: EdgeInsets.zero,
          children: <Widget>[
            IconButton(icon: Icon(Icons.not_interested), tooltip: 'Rechazar', color: Colors.pink, onPressed: (){
              setState(() {
                if(_notificaciones.isNotEmpty){
                  _notificaciones.removeAt(index);
                }               
              });
            }, iconSize: 22),
            IconButton(icon: Icon(Icons.thumb_up), tooltip: 'Aceptar', color: Colors.indigo, onPressed: (){
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
        FadeInImage.memoryNetwork(
          placeholder: kTransparentImage, 
          image: 'https://images.locanto.com.sv/4917901862/Toyota-Corolla-2018-de-Agencia-Venta_1.jpg'
        ),
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