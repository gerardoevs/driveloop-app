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
      body: _crearListaDeOpciones(context)
    );
  }

  Widget _crearListaDeOpciones(BuildContext context){

    final screen = MediaQuery.of(context).size;

    return ListView(
      children: <Widget>[
        SizedBox(height: 5.0),
        SizedBox(
          height: screen.height / 6,
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Image(image: AssetImage('assets/img/cars/car1.jpg'), fit: BoxFit.cover),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Toyota Corola", 
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),maxLines: 2, overflow: TextOverflow.clip,
                      ),
                      SizedBox(height: 5.0,),
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                        overflow: TextOverflow.clip,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          FlatButton(
                            onPressed: (){},
                            child: Text("Reservar"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: screen.height / 6,
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Image(image: AssetImage('assets/img/cars/car2.jpg'), fit: BoxFit.cover),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Hyundai Elantra", 
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),maxLines: 2, overflow: TextOverflow.clip,
                      ),
                      SizedBox(height: 5.0,),
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                        overflow: TextOverflow.clip,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          FlatButton(
                            onPressed: (){},
                            child: Text("Reservar"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: screen.height / 6,
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Image(image: AssetImage('assets/img/cars/car3.jpg'), fit: BoxFit.cover),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Hyundai Elantra 2017", 
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),maxLines: 2, overflow: TextOverflow.clip,
                      ),
                      SizedBox(height: 5.0,),
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                        overflow: TextOverflow.clip,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          FlatButton(
                            onPressed: (){},
                            child: Text("Reservar"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: screen.height / 6,
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Image(image: AssetImage('assets/img/cars/car4.jpg'), fit: BoxFit.cover),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Nissan Rogue", 
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),maxLines: 2, overflow: TextOverflow.clip,
                      ),
                      SizedBox(height: 5.0,),
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                        overflow: TextOverflow.clip,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star_half),
                          FlatButton(
                            onPressed: (){},
                            child: Text("Reservar"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        
      ],
    ); 

  }
}

