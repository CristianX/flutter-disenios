import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  final estiloSubtitulo = TextStyle( fontSize: 18.0, color: Colors.grey );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SingleChildScrollView su contenido es más estático
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto()
         

        ]
        ),
      ),
      
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image (
        image: NetworkImage('http://www.hdwallpaperspulse.com/wp-content/uploads/2016/03/03/awesome-landscape-wallpaper.jpeg'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    // SafeArea muestra el contenido fuera del notch
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric( horizontal: 30.0, vertical: 20.0 ),
        child: Row(
          children: <Widget>[
            // Expanded para ocupar el ancho de la pantalla
            Expanded(
              child: Column(
                // En column el cross es horizontal y el main vertical
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text( 'Pradera con montaña', style: estiloTitulo ),
                  SizedBox(height: 7.0),
                  Text( 'Se encuentra en los alpes', style: estiloSubtitulo  ),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle( fontSize: 20.0 ))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      // En row el cross es vertical y el main horizontal
      // spaceEvenly distribuye dimensiones de manera proporcional
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        _accion( Icons.call, 'Llamar' ),
        _accion( Icons.near_me, 'Ruta' ),
        _accion( Icons.share, 'Share' )
        
      ],
    );
  }

  Widget _accion( IconData icon, String texto ) {
    return Column(
      children: <Widget>[
        Icon( icon, color: Colors.blue, size: 40.0 ),
        SizedBox( height: 5.0 ),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
        );
  }

  Widget _crearTexto() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0),
        child: Text(
          'Aliqua veniam voluptate dolore in commodo sit nisi duis ipsum laboris culpa aliquip. Eiusmod aliquip mollit adipisicing deserunt. Laborum adipisicing aliqua reprehenderit nostrud consectetur sit aliquip deserunt voluptate deserunt ullamco dolor sit. Et eu enim non proident officia eu aliquip ullamco elit. Velit officia dolore pariatur incididunt eiusmod aliquip elit. Proident minim incididunt ad et.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}