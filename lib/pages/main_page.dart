import 'package:Driveloop/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  FocusNode searchFocus = FocusNode();
  bool searching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searching ? _searchAppbar() : _mainAppbar(),
      drawer: AppDrawer(tipoUsuario: 'owner'),
      body: _buildBody(),
    );
  }

  Widget _searchAppbar() {
    return AppBar(
      title: TextField(
        autofocus: true,
        decoration: InputDecoration(
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          prefixIcon: Icon(Icons.search, color: Colors.white),
        ),
        style: TextStyle(color: Colors.white, fontSize: 18),
        focusNode: searchFocus,
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              setState(() {
                searching = false;
              });
            })
      ],
    );
  }

  Widget _mainAppbar() {
    return AppBar(
      title: Text('Driveloop'),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                searching = true;
              });
            }),
        PopupMenuButton<String>(
            icon: Icon(Icons.notifications),
            offset: Offset(0, 60),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                    child: ListTile(
                        trailing: Icon(Icons.new_releases),
                        title: Text('¡Tienes una solicitud nueva!'))),
                PopupMenuItem(
                    child: ListTile(
                        trailing: Icon(Icons.new_releases),
                        title: Text('¡Tienes una solicitud nueva!'))),
                PopupMenuItem(
                    child: ListTile(
                        trailing: Icon(Icons.new_releases),
                        title: Text('Un cliente canceló su solicitud'))),
                PopupMenuItem(
                    child: ListTile(
                        trailing: Icon(Icons.new_releases),
                        title: Text('Un cliente canceló su solicitud'))),
                PopupMenuItem(
                    child: ListTile(
                        trailing: Icon(Icons.new_releases),
                        title: Text('¡Tienes una solicitud nueva!'))),
              ];
            })
      ],
    );
  }

  Widget _buildBody() {
    if(searching){
      return Center(child: Text('Vehiculo no encontrado'));
    }else{
      return ListView(
        children: <Widget>[
          SizedBox(height: 5.0),
          CarTiles(
            brand: 'Toyota Corola', 
            asset: 'assets/img/cars/car1.jpg', 
            description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 
            routeInfo: 'carinfo'
          ),
          CarTiles(
            brand: 'Hyundai Elantra', 
            asset: 'assets/img/cars/car2.jpg', 
            description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 
            routeInfo: 'carinfo'
          ),
          CarTiles(
            brand: 'Hyundai Elantra 2017', 
            asset: 'assets/img/cars/car3.jpg', 
            description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 
            routeInfo: 'carinfo'
          ),
          CarTiles(
            brand: 'Nissan Rogue', 
            asset: 'assets/img/cars/car4.jpg', 
            description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 
            routeInfo: 'carinfo'
          ),
        ],
      );
    }
  }
}

class CarTiles extends StatelessWidget {
  CarTiles({
    this.brand,
    this.description,
    this.asset,
    this.routeInfo
  });
  final String brand;
  final String description;
  final String asset;
  final String routeInfo;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return SizedBox(
      height: screen.height / 6,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 4 / 3.5,
              child: Image(
                  image: AssetImage('$asset'),
                  fit: BoxFit.cover),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '$routeInfo'),
                    child: Text(
                      "$brand",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "$description",
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
                        onPressed: () =>
                            Navigator.pushNamed(context, '$routeInfo'),
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
    );
  }
}
