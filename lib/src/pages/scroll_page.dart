import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // Dirección para cambiar página
        scrollDirection: Axis.vertical ,
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ],
      )
      
    );
  }

   Widget _pagina1() {
    //  Sobreposición de widgets
     return Stack(

       children: <Widget>[
         _colorFondo(),
         _imagenFondo(),
         _textos()
       ],

     );
   }

  //  Color de fondo
  Widget _colorFondo() {
    return Container(
      // Tomar todo el ancho y alto de la pantalla
      width: double.infinity,
      height: double.infinity,
      // Opacidad de 1.0 para que el color sea sólido
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  // Imagen de fondo
  Widget _imagenFondo() {

    return Container(
      // Tomar todo el ancho y alto de la pantalla
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/original.png'),
        fit: BoxFit.cover
      ),
    );
  }

  // Estilo de texto
  final estiloTexto = TextStyle( color: Colors.white, fontSize: 50.0 );

  // Texto
  Widget _textos() {
    return SafeArea(
          child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text( '11°', style: estiloTexto ),
          Text( 'Miércoles', style: estiloTexto ),
          // Expande el ancho y alto posible siempre respetando el espacio de los otros widgets
          Expanded( child: Container() ),
          Icon( Icons.keyboard_arrow_down, size: 70.0, color: Colors.white )
        ],
      ),
    );
  }


   
   
   Widget _pagina2() {
     return Container(
       width: double.infinity,
       height: double.infinity,
       color: Color.fromRGBO(108, 192, 218, 1.0),
       child: Center(
         child: RaisedButton(
           shape: StadiumBorder(),
           color: Colors.blue,
           textColor: Colors.white,
           child: Padding(
             padding: EdgeInsets.symmetric( horizontal: 40.0, vertical: 20.0 ),
             child: Text('Bienvenidos', style: TextStyle( fontSize: 20.0 )),
            ),
           onPressed: (){},
         ),
       ),
     );
   }
}