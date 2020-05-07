import 'package:flutter/material.dart';

// Para checkear que plataforma es
import 'dart:io' show Platform;
 

 // Páginas
import 'package:disenios/src/pages/basico_page.dart';
import 'package:disenios/src/pages/scroll_page.dart';
import 'package:disenios/src/pages/botones_page.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // StatusBar
    // Quitar el sombrado de la statusbar
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith( statusBarColor:  (Platform.isAndroid) ? Colors.transparent : Colors.white ));

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