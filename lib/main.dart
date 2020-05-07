import 'package:flutter/material.dart';
 

 // Páginas
import 'package:disenios/src/pages/basico_page.dart';
import 'package:disenios/src/pages/scroll_page.dart';
import 'package:disenios/src/pages/botones_pages.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Quitando indicación de debug
      debugShowCheckedModeBanner: false,
      title: 'Diseños',


      initialRoute: 'botones',
      // Rutas
      routes: {
        'basico' : (BuildContext context) => BasicoPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'botones' : (BuildContext context) => BotonesPage(),
      },

    );
  }

}