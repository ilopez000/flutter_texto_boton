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

  void _changeTextColor() {
    setState(() {
      // Aquí es donde cambias el color del texto.
      // Estoy alternando entre negro y rojo, pero puedes elegir cualquier lógica.
      _textColor = _textColor == Colors.black ? Colors.red : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambia Color de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '¡Presiona el botón para cambiar mi color!',
              style: TextStyle(color: _textColor), // Aquí aplicas el color.
            ),
            SizedBox(height: 20), // Espacio entre el texto y el botón.
            ElevatedButton(
              onPressed: _changeTextColor, // Método llamado al presionar.
              child: Text('Cambiar Color'),
            ),
          ],
        ),
      ),
    );
  }
}
