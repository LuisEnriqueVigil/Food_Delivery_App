import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitileWidget extends StatelessWidget {
  final String  titulo ; 
  final double top;

   TitileWidget({ this.titulo, this.top}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left :20.0,top:top),
      child: Text(
        titulo,
        style: GoogleFonts.poppins(
          fontSize:20.0,
          fontWeight: FontWeight.w500,
          color:Colors.black.withOpacity(0.45)
        ),
      ),
    );
  }
}