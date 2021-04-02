import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TextSaludo extends StatelessWidget {

  const TextSaludo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:20.0,vertical: 2.5),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hola, Elon',style: GoogleFonts.poppins(
            fontSize:18.0, 
            color: Colors.black.withOpacity(0.65)
          ),),
          Text('Buenos dias!',style: GoogleFonts.poppins(
            fontSize:22.0, 
            fontWeight: FontWeight.bold,
            color:Colors.black.withOpacity(0.7)
          ),)
        ],
      )
    );
  }
}