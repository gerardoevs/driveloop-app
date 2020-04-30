import 'package:flutter/material.dart';

class CarInfoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Información del automovil"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(25.0),
              child:ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(  
                  image: AssetImage('assets/img/cars/car1.jpg'),
                ),
              ) 
            ),
            Center(
              child: Text("Toyota Corolla", style: TextStyle(fontSize: 20.0)),
            ),
            Container(
              margin: EdgeInsets.all(25.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: TextStyle(),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      )
    );
  }
}