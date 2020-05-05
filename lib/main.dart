import 'package:flutter/material.dart';
 

 // Páginas
import 'package:disenios/src/pages/basico_page.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Quitando indicación de debug
      debugShowCheckedModeBanner: false,
      title: 'Diseños',


      initialRoute: 'basico',
      // Rutas
      routes: {
        'basico' : (BuildContext context) => BasicoPage(),
      },

    );
  }

}