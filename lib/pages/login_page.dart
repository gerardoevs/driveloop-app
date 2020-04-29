import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.indigo
          ),
          _createLogo(context),
          _loginForm(context)
        ],
      )
    );
  }

  Widget _loginForm(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          SafeArea(
            child: Container(height: 280),
          ),

          Container(
            width: size.width / 0.85,
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: <Widget>[
                _crearInputUsuario(),
                SizedBox(height: 20.0),
                _crearInputPassword(),
                SizedBox(height: 20.0),
                RaisedButton(
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  child: Text("Iniciar Sesión"),
                  color: Colors.indigo,
                  onPressed: () => Navigator.pushReplacementNamed(context, 'owner'),
                )
              ],
            ),
          )
        ],
      ),
    );

  }

  _crearInputUsuario(){
    return TextField(
      autofocus: true,
      style: TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.white
          )
        ),
        labelText: 'Usuario',
        hintText: 'Ingrese su usuario'
      ),
      onChanged: ( input ) {},
    );
  }

  _crearInputPassword(){
    return TextField(
      autofocus: true,
      obscureText: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        labelText: 'Contraseña',
        hintText : 'Ingrese su contraseña'
      ),
      onChanged: ( input ) {},
    );
  }

  Widget _createLogo(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(top: 150),
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Center(
        child: Text(
          "DRIVELOOP",
          style: TextStyle(
            color: Colors.white,
            fontSize: 60
          ),  
        ),
      )
    );
  }

}
