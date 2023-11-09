import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _textColor = Colors.black; // El color inicial del texto.
  double _textSize = 20.0; // El tamaño inicial del texto.
  bool _isBold = false; // La variable para rastrear si el texto está en negrita o no.

  void _changeTextBold(){
    setState(() {
      // Cambia la negrita
      if(_isBold==true){_isBold=false;}
      else{_isBold=true;}
    });
  }

  void _changeTextColor() {
    setState(() {
      // Cambia el color del texto.
      if(_textColor== Colors.black ){
        _textColor =Colors.red;
      }else{
        _textColor =Colors.black;
      }
    });
  }

  void _changeTextSize() {
    setState(() {
      // Cambia el tamaño del texto.
      if(_textSize==20.0){
        _textSize=30.0;
      }else{
        _textSize=20.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambia Color y Tamaño de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '¡Interactúa con los botones!',
              style: TextStyle(
                color: _textColor,
                fontSize: _textSize, // Aplicar el tamaño del texto aquí.
                fontWeight: _isBold ? FontWeight.bold : FontWeight.normal, // Establece el peso de la fuente.
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeTextColor,
              child: Text('Cambiar Color'),
            ),
            SizedBox(height: 10), // Espacio entre los dos botones.
            ElevatedButton(
              onPressed: _changeTextSize,
              child: Text('Cambiar Tamaño'),
            ),
            SizedBox(height: 10), // Espacio entre los dos botones.
            ElevatedButton(
              onPressed: _changeTextBold,
              child: Text('Cambiar Negrita'),
            ),
          ],
        ),
      ),
    );
  }
}
