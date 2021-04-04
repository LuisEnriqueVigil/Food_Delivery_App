import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrecioCantidad extends StatefulWidget {
  const PrecioCantidad({Key key}) : super(key: key);

  @override
  _PrecioCantidadState createState() => _PrecioCantidadState();
}

class _PrecioCantidadState extends State<PrecioCantidad> {
   int preciototal = 25; 
   int cantidadInicial = 1; 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildNombrePrecio(),
        buildCantidadContador(context)
      ],
    );
  }

  Widget buildCantidadContador(BuildContext context) {
    final size = MediaQuery.of(context).size; 
    return Container(
        margin: EdgeInsets.only(left:20.0,top:12.0),
        child: Row(
          children: <Widget>[

            Text('Cantidad', 
            style: GoogleFonts.poppins(
              color: Colors.grey,fontSize:18, fontWeight: FontWeight.w500
            )
            ),

            SizedBox(width: size.width*0.10,),

            IconButton(
              icon: Icon(Icons.remove), 
              onPressed: (){
                setState(() {
                  if(cantidadInicial == 1) 
                    cantidadInicial = 1; 
                  else
                  cantidadInicial --;
                });
              }
            ),

            SizedBox(width: size.width*0.12,),

            Text(cantidadInicial.toString(), 
            style:GoogleFonts.poppins(
              color: Colors.black,fontSize:18, fontWeight: FontWeight.w500
            )), 
            
            SizedBox(width: size.width*0.12,),

            IconButton(
              icon: Icon(Icons.add), 
              onPressed: (){
                setState(() {
                  cantidadInicial++;
                });
              }
            ),
          ],
        ),
      );
  }

  Widget buildNombrePrecio() {
    return Container(
        margin: EdgeInsets.only(left:20.0,top:5,right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Pizza Napolitana',
                  style:GoogleFonts.poppins(
                    fontSize: 20.0, fontWeight: FontWeight.bold,
                    color: Colors.black
                  ), 
                ), 
                Text('Pizzas', 
                style: GoogleFonts.poppins(
                  fontSize: 18.0,fontWeight: FontWeight.normal,
                  color:Colors.grey
                )
                )
              ],
            ),
            Text('\$'+ (preciototal*cantidadInicial).toString(),
              style: GoogleFonts.poppins(
                fontSize:25.0,color:Colors.black, 
                fontWeight: FontWeight.bold
              ),
            )
          ],
          
        )
      );
  }
}