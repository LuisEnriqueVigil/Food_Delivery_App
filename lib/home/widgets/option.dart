import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionsMenu extends StatelessWidget {

  final IconData icon ; 
  final String option; 


  const OptionsMenu({ Key key, this.icon, this.option,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
         IconButton(
          icon:Icon(icon),
          onPressed: (){},
        ),
        Text(option, 
        style:GoogleFonts.poppins(
          fontSize: 15.0,
          fontWeight: FontWeight.w400
        )),     
      ],
    );
  }
}