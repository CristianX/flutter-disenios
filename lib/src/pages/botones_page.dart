
import 'package:flutter/material.dart';

// Importado libreria matemática para uso de pi
import 'dart:math';


class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Stack para sobreposición de widgets
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos()
              ],
            ),
          )
        ],
      ),
      // Navegación en la parte de abajo
      bottomNavigationBar: _bottonNavigationBar(context)
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      // Hacer gradiente y cambiar de color
      decoration: BoxDecoration(
        // Para gradiente circular
        gradient: LinearGradient(
          // Para definir gradiente vertical
          // 0.6 es como que comenzara del 60% de la pantalla
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

    // Container con caja rosa

    // Rotate para rotar el elemento en la pantalla
    final cajaRosa = Transform.rotate(
      angle: -pi /5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]
          )
        ),
      ),
    );
    
    
    

    // Sobreposición de elementos
    return Stack(
      children: <Widget>[
        gradiente,

        // Positioned para ubicar elmento con coordenadas específicas 
        Positioned(
          child: cajaRosa,
          top: -100.0,
        )
      ],
    );

  }

  Widget _titulos() {
    return SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Clasificación de transacción', style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold )),
              SizedBox( height: 10.0 ),
              Text('Clasificación de transacción en una categoría en particular', style: TextStyle( color: Colors.white, fontSize: 18.0 )),

          ],
        ),
      ),
    );
  }

  Widget _bottonNavigationBar( BuildContext context ) {
    // Widget con tema personalizado solo aplicado al navigation (no es global)
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith( caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0) ) )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
          icon: Icon( Icons.calendar_today, size: 30.0 ),
          title: Container()
          ),
          BottomNavigationBarItem(
          icon: Icon( Icons.bubble_chart, size: 30.0 ),
          title: Container()
          ),
          BottomNavigationBarItem(
          icon: Icon( Icons.supervised_user_circle, size: 30.0 ),
          title: Container()
          ),
        ]
      ),
    );
  }

}